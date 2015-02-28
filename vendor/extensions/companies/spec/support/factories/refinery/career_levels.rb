
FactoryGirl.define do
  factory :career_level, :class => Refinery::Companies::CareerLevel do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

