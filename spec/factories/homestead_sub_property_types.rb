# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :homestead_sub_property_type, :class => 'SubPropertyType' do
    code "MyString"
    name "MyString"
  end
end
