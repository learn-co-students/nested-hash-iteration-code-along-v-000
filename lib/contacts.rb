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

  contacts.each do |person, persondetails|
    if person == "Freddy Mercury"
      persondetails.each do |findicecream, icecream|
        if findicecream == :favorite_ice_cream_flavors
          icecream.each do |flavor|
            icecream.delete(flavor) if flavor == "strawberry"
          end
        end
      end
    end
  end

end
