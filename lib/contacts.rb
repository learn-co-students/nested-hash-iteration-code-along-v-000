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

#def remove_strawberry(contacts)
#  contacts["Freddy Mercury"][:favorite_ice_cream_flavors].shift
#  contacts
#end

def remove_strawberry(contacts)
  contacts.each do |person, info|
    fav_flavors = contacts[person][:favorite_ice_cream_flavors]
    fav_flavors.delete_if{|flavor| flavor == "strawberry"} if fav_flavors != nil
  end
end
