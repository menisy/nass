
FactoryGirl.define do
  factory :school, :class => Refinery::Schools::School do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

