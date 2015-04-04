
FactoryGirl.define do
  factory :course, :class => Refinery::Schools::Course do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

