require 'pry'

  # This is the hash we will be passing into the remove_strawberry method
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
  contacts.each do |person, contacts_details_hash|
    contacts_details_hash.each do |attribute, data|
      if attribute == :favorite_icecream_flavors
        data.delete_if { |ice_creame| ice_creame == "strawberry" }
      end
    end
  end
end
