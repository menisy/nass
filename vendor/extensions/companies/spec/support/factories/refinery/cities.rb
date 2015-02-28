
FactoryGirl.define do
  factory :city, :class => Refinery::Companies::City do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

