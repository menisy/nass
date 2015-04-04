
FactoryGirl.define do
  factory :subscription, :class => Refinery::Companies::Subscription do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

