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
 contacts.each do |person, data|
   if person == "Freddy Mercury"
     data.each do |info, key|
       if info == :favorite_ice_cream_flavors
         key.delete_if {|icecream| icecream == "strawberry"}
       end
     end
   end
 end
end
