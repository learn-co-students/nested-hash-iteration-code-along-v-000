require 'pry'

  contacts = {
     "Jon Snow" => {
       name: "Jon",
       email: "jon_snow@thewall.we", 
       favorite_ice_cream_flavors: ["chocolate", "vanilla"]
     },
     "Freddy Mercury" => {
       name: "Freddy",
       email: "freddy@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
   }

#Iterate over the contacts hash and when you reach the key 
#:favorite_ice_cream_flavors, remove "strawberry" from the array of Freddy's favorite ice cream flavors.
  
def remove_strawberry(contacts)
  contacts.each do |person, contact_details_hash| 
    contact_details_hash.each do |attribute, data|
      if attribute == :favorite_ice_cream_flavors
        data.delete_if { |ice_cream| ice_cream == "strawberry" }
      end
    end
  end
end
