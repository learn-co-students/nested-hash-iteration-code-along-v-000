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
  contacts.each do |name, contact|  #.each do names are important here since you need to call them later to iterate down
    contact.each do |att, value|
      if att == :favorite_ice_cream_flavors
        value.delete_if {|item| item == "strawberry"}
      end
    end
  end
end
