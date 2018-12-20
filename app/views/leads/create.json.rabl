object @lead

node :address_attributes do |lead|
  {
    "line_1": lead.extract_address_line,
    "postal_code": lead.extract_postal_code,
    "city": lead.extract_city
  }

end
