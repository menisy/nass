
FactoryGirl.define do
  factory :job_role, :class => Refinery::Companies::JobRole do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

