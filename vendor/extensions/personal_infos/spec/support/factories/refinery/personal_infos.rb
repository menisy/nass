
FactoryGirl.define do
  factory :personal_info, :class => Refinery::PersonalInfos::PersonalInfo do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

