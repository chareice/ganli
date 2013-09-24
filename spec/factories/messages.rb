# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    sender 1
    receiver 1
    content "MyText"
    atachment "MyString"
    status 1
  end
end
