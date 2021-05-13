FactoryBot.define do
  factory :user do
    role { 1 }
    name { "MyString" }
    vacation_limit { 1 }
  end
end
