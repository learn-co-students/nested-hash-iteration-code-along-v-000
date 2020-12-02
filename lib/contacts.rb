require 'pry'

  # This is the array we will be passing into the remove_strawberry method
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
  #contacts["Freddy Mercury"].each do |attribute, value|
    # attribute == :favorite_ice_cream_flavors
      # :favorite_ice_cream_flavors.include? "strawberry"
      contacts["Freddy Mercury"][:favorite_ice_cream_flavors].delete("strawberry")
      return contacts
#  end
end

=begin
def remove_strawberry(contacts)
  contacts.each do |person, data|
  data.each do |attribute, value|
    #binding.pry
    if attribute == :favorite_ice_cream_flavors
     # :favorite_ice_cream_flavors.include? "strawberry"
        contacts[data][:favorite_ice_cream_flavors].delete("strawberry")
        return contacts
    else
      return contacts
    end
  end
  end
end
=end
