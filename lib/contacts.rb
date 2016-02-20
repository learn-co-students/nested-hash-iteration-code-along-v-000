require 'pry'
 # This is the array we will be passing into the remove_strawberry method
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_icecream_flavors: ["chocolate", "vanilla"]
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
#pry doesn't work--even w the example code given!
#And the code you used in the example makes no sense.


# contacts.each do |person, contact_details_hash|
#   contact_details_hash.each do |attribute, data|
#     if attribute == :favorite_icecream_flavors
#       binding.pry
#     end
#   end
# end


# def remove_strawberry(contacts)
#   contacts.each do |person, info|
#     info.each do |data, details|
#          data.each do |type|
#             if type == :favorite_icecream_flavors
#               type.each do |flavor|
#                 if flavor == "strawberry"
#                     flavor.delete("strawberry")
#                 end
#             end
#          end
#         end
#     end
#   end
# end

# ###
def remove_strawberry(contacts)
  contacts.each do |person, contact_details_hash|
    contact_details_hash.each do |attribute, data|
      if attribute == :favorite_icecream_flavors
        data.delete_if {|ice_cream| ice_cream == "strawberry"}
      end
    end
  end
end

