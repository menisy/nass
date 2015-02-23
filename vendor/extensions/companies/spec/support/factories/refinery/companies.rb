
FactoryGirl.define do
  factory :company, :class => Refinery::Companies::Company do
    sequence(:company_name) { |n| "refinery#{n}" }
  end
end

