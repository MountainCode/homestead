module Homestead
  FactoryGirl.define do
    factory :office, class: Homestead::Office do
      name 'Acme Real Estate'
      agents { [FactoryGirl.create(:agent),
                FactoryGirl.create(:jackson_agent)] }
    end
  end
end
