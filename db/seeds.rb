require 'countries'

puts 'seeding database with Homestead data'

module Homestead
  {
    'A' => 'Active',
    'C' => 'Under Contract',
    'S' => 'Sold',
    'X' => 'Unknown'
  }.each {|k, v| ListingStatus.new(code: k, name: v).save!}

  residential = PropertyType.new(code: 'R', name: 'Residential')
  residential.save!
  commercial = PropertyType.new(code: 'C', name: 'Commercial')
  commercial.save!
  land = PropertyType.new(code: 'L', name: 'Vacant Land')
  land.save!

  ::Country['US'].states.each do |code, state|
    State.new(code: code, name: state['name']).save!
  end

  SubPropertyType.new(code: 'S', name: 'Single family home', property_type: residential).save!
  SubPropertyType.new(code: 'L', name: 'Lot', property_type: land).save!
  SubPropertyType.new(code: 'B', name: 'Business', property_type: commercial).save!

  ListingProvider.new(name: 'Custom').save!

  {'A' => 'Active', 'I' => 'Inactive'}.each do |k,v|
    [OfficeStatus, AgentStatus].each {|c| c.new(code: k, name: v).save!}
  end
end
