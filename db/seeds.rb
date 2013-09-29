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
  }.each {|k, v| PropertyType.new(code:k, name: v).save!}
  ::Country['US'].states.each do |code, state|
    State.new(code: code, name: state['name']).save!
  end
end
