FactoryBot.define do
  factory :vacation_request do
    status { 1 }
    vacation_start_date { "MyString" }
    vacation_end_date { "MyString" }
    employee { nil }
    manager { nil }
  end
end
