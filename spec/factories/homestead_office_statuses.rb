# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :homestead_office_status, :class => 'OfficeStatus' do
    code "MyString"
    name "MyString"
  end
end
