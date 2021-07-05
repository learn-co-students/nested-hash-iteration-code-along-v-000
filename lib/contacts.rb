require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we",
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }

# Here was before I realized that this was a codealong:
# def remove_strawberry(contacts)
#   contacts.each do |person, data|
#     data.each do |attribute, value|
#       if attribute == :favorite_ice_cream_flavors
#         # value.each do |flavor|
#           # flavor.delete_if flavor == "strawberry"
#         #   end
#         # end
#       end
#     end
#   end
# end

# Method 1: 1. You can iterate through the hash and, when you reach the appropriate level, check to see if the key `==`
# ("is equal to") `:favorite_ice_cream_flavors`. If it does, check to see if that array contains `"strawberry"`.
# If it does, then delete it from the array.

def remove_strawberry(contacts)
  contacts.each do |person, contact_details_hash|
    contact_details_hash.each do |attribute, data|
      if attribute == :favorite_ice_cream_flavors
        data.delete_if {|ice_cream| ice_cream == "strawberry"}
      end
    end
  end
end
