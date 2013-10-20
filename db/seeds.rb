require 'countries'

puts 'seeding database with Homestead data'

module Homestead
  {
    'A' => 'Active',
    'C' => 'Under Contract',
    'S' => 'Sold',
    'X' => 'Unknown'
  }.each {|k, v| ListingStatus.where(code: k, name: v).first_or_create}

  residential = PropertyType.where(code: 'R', name: 'Residential').first_or_create
  commercial = PropertyType.where(code: 'C', name: 'Commercial').first_or_create
  land = PropertyType.where(code: 'L', name: 'Vacant Land').first_or_create

  ::Country['US'].states.each do |code, state|
    State.where(code: code, name: state['name']).first_or_create
  end

  SubPropertyType.where(code: 'S', name: 'Single family home', property_type: residential).first_or_create
  SubPropertyType.where(code: 'L', name: 'Lot', property_type: land).first_or_create
  SubPropertyType.where(code: 'B', name: 'Business', property_type: commercial).first_or_create
  ListingProvider.where(name: 'Custom').first_or_create

  {'A' => 'Active', 'I' => 'Inactive'}.each do |k,v|
    [OfficeStatus, AgentStatus].each do |c|
        c.where(code: k, name: v).first_or_create
    end
  end
end
