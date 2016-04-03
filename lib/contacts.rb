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

def remove_strawberry(contacts)

  contacts.each do |person, data|
    data.each do |attribute, value|
       if attribute == :favorite_icecream_flavors && person == "Freddy Mercury"
        # binding.pry
        contacts[person][attribute].shift
        break
      end
    end
  end
end
