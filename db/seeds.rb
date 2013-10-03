require 'countries'

puts 'seeding database with Homestead data'

module Homestead
  {
    'A' => 'Active',
    'C' => 'Under Contract',
    'S' => 'Sold',
    'X' => 'Unknown'
  }.each {|k, v| ListingStatus.new(code: k, name: v).save!}
  {
    'R' => 'Residential',
    'C' => 'Commercial',
    'L' => 'Vacant Land'
  }.each {|k, v| PropertyType.new(code: k, name: v).save!}
  ::Country['US'].states.each do |code, state|
    State.new(code: code, name: state['name']).save!
  end

  {
    'S' => 'Single family home',
    'L' => 'Lot',
    'B' => 'Business'
  }.each {|k, v| SubPropertyType.new(code: k, name: v).save!}

  ListingProvider.new(name: 'Custom').save!

  {'A' => 'Active', 'I' => 'Inactive'}.each do |k,v|
    [OfficeStatus, AgentStatus].each {|c| c.new(code: k, name: v).save!}
  end
end
