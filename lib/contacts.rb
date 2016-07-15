def remove_strawberry(contacts)

  contacts.each do |person, data|
  if person == "Freddy Mercury"
    data.each do |attribute, value|
      if attribute == :favorite_ice_cream_flavors
        value.delete_if {|flavor| flavor == "strawberry"}
      end
    end
  end
end
end
