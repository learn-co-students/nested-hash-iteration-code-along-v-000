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
  contacts.each do |name, attributes|
    if name == "Freddy Mercury"
      attributes.each do |attribute_name, flavors|
        if attribute_name == :favorite_ice_cream_flavors
          flavors.delete_if { |flav| flav == 'strawberry' }
        end
      end
    end
  end
end
