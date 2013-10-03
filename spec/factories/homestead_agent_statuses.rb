# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :homestead_agent_status, :class => 'AgentStatus' do
    code "MyString"
    name "MyString"
  end
end
