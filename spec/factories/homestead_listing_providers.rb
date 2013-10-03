# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :homestead_listing_provider, :class => 'ListingProvider' do
    name "MyString"
  end
end
