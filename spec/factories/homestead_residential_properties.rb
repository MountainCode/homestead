# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :homestead_residential_property, :class => 'ResidentialProperty' do
    beds 1
    baths "9.99"
  end
end
