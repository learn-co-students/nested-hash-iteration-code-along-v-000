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

  def remove_strawberry(contacts)
    contacts.each do |key, hash|
      hash.each do |value, description|
        if value == :favorite_ice_cream_flavors
          description.delete("strawberry")
        end
      end
    end
  end
  
puts contacts
remove_strawberry(contacts)
puts contacts
