
FactoryGirl.define do
  factory :job_type, :class => Refinery::Companies::JobType do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

