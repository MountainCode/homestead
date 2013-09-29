module Homestead
  FactoryGirl.define do
    factory :agent, class: Homestead::Agent do
      first_name 'Chris'
      last_name 'Kentfield'
      listings { [FactoryGirl.create(:listing)] }
    end
    factory :jackson_agent, class: Homestead::Agent do
      first_name 'Jackson'
      last_name 'Dog'
      listings { [FactoryGirl.create(:jackson_listing),
                  FactoryGirl.create(:jackson_listing2)] }
    end
  end
end
