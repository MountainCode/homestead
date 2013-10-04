# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :homestead_land_property, :class => 'LandProperty' do
    lot_size "9.99"
  end
end
