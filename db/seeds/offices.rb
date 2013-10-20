module Homestead
  Office.new(
    name: 'Acme Real Estate',
    agents: [Agent.first]
  ).save! unless Office.where(name: 'Acme Real Estate').any?
end
