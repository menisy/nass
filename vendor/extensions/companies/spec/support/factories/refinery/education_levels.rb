
FactoryGirl.define do
  factory :education_level, :class => Refinery::Companies::EducationLevel do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

