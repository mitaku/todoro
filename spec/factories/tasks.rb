# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
      name "MyString"
      done false
      finished_at "2011-12-28 20:31:42"
    end
end