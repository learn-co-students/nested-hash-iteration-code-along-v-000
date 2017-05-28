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
  contacts.each do |contact|
    if contact == "Freddy Mercury"
      contact.each do |attribute|
        if attribute == :favorite_ice_cream_flavors
          attribute.each do |flavor|
            if flavor == "strawberry"
              flavor.delete
            end
          end
        end
      end
    end
  end
end
