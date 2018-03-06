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
  if contacts.detect("Freddy Mercury")
    if contacts["Freddy Mercury"].detect(:favorite_ice_cream_flavors)
      temp = ["Freddy Mercury"][:favorite_ice_cream_flavors]
      temp.delete("strawberry") if temp.detect("strawberry")
    end
  end
  contacts
end
