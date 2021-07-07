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

def remove_strawberry(contacts)
  contacts.each do |person, contact_details_hash| #at this level, person is "Jon Snow" and contacts_details_hash is Jon Snow's key/value pairs of name, email and favorite_ice_cream_flavors
    contact_details_hash.each do |attribute, data| #at this level, attribute is "name" and data is "Jon"
      if attribute == :favorite_ice_cream_flavors #at this level, data is "["chocolate", "vanilla"]"
        data.delete_if {|ice_cream| ice_cream == "strawberry"} #when iterating through the data for favorite_ice_cream_flavors, delete strawberry if it's there
      end
    end
  end
end
