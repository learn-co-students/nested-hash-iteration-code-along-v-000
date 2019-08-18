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
  #ITERATE OVER THE FIRST LEVEL
    contacts.each do |person, contact_details_hash|
  #ITERATE OVER THE SECOND LEVEL (going a level deeper)
    contact_details_hash.each do |attribute, data|
  # LOCATE THE ELEMENT WE'RE LOOKING FOR (in this case STRAWBERRY)
      if attribute == :favorite_ice_cream_flavors
   # UPDATE THE HASH BY DELETEING THE STRAWBERRY
        data.delete_if  {|ice_cream| ice_cream == "strawberry"}


      end
      end
      end
end
