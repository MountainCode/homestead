module Homestead
  Office.new(
    name: 'Acme Real Estate',
    agents: [Agent.first]
  ).save!
end
