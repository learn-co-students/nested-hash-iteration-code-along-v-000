def remove_strawberry(contacts)
  contacts.each do |person, details|
    details.each do |detail, data|
      if detail == :favorite_icecream_flavors
        data.delete_if { |ice_cream| ice_cream == "strawberry" }
      end
    end
  end
end
