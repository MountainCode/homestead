module Homestead
  FactoryGirl.define do
    factory :firm, class: Homestead::Firm do
      name 'Acme Group'
      offices { [FactoryGirl.create(:office)] }
    end
  end
end
