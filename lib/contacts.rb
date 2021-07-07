require 'pry'

  # This is the array we will be passing into the remove_strawberry method


def remove_strawberry(contacts)
  contacts.each do |name, details|
      details.each do |keys, moredets|
          if attribute == :favorite_ice_cream_flavors
            data.delete_if {|ice cream| ice cream = "strawberry"}
          end
      end

end
