
FactoryGirl.define do
  factory :program, :class => Refinery::Schools::Program do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

