# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :homestead_listing_photo, :class => 'ListingPhoto' do
    image ""
    name "MyString"
    comment "MyString"
  end
end
