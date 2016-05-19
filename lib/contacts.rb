require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we", 
  #     favorite_icecream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }
  
  #removes strawberry from Jon Snow's favourite ice cream flavors

def remove_strawberry(contacts)
  contacts.each {|person, contact_details_hash| 
    contact_details_hash.each {|attribute, data| 
      if attribute == :favorite_icecream_flavors
        data.delete_if {|ice_cream| ice_cream == "strawberry"}
      end
    }
  }
end
