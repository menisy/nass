
FactoryGirl.define do
  factory :industry, :class => Refinery::Companies::Industry do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

