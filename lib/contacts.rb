require 'pry'

def remove_strawberry(contacts)
  contacts.each do |person, details|
    details.each do |attribute, data|
      if attribute == :favorite_icecream_flavors
        data.delete_if {|ice_cream| ice_cream == "strawberry"}
      end
    end
  end
end
