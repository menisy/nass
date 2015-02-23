
FactoryGirl.define do
  factory :job, :class => Refinery::Companies::Job do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

