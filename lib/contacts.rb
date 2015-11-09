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
  contacts.each do |key, value|
    value.each do |sub_key, sub_value|
      if sub_key == :favorite_icecream_flavors
        sub_value.delete_if { |flavor| flavor == "strawberry"}
      end
    end
  end
end
