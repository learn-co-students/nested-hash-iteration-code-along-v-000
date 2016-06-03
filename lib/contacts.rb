#require 'pry'

  # This is the array we will be passing into the remove_strawberry method
   #contacts = {
    # "Jon Snow" => {
     #  name: "Jon",
      #favorite_icecream_flavors: ["chocolate", "vanilla"]
     #},
     #"Freddy Mercury" => {
      # name: "Freddy",
       #email: "freddy@mercury.com",
      #favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
     #}
   #}

  #binding.pry
  
def remove_strawberry(contacts)

contacts.each do |person, contact_details_hash|
#Iterating over First Level, Removing Strawberry from the flavors
#Iterate over top level of hash where Keys = person & Value = hash details of person
  contact_details_hash.each do |attribute, data|
    #Iterating Over Second Level, removing strawberry from the flavors
    if attribute == :favorite_ice_cream_flavors
      #step 4: Update the Hash. Use 'DELETE_IF' 2 iterate thru the ice cream array & remove any elements 
      #that matches "Strawberry"
      data.delete_if {|ice_cream| ice_cream == "strawberry"}

        #binding.pry

      end 
    end 
  end
end 
