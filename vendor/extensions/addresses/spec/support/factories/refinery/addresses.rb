
FactoryGirl.define do
  factory :address, :class => Refinery::Addresses::Address do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

