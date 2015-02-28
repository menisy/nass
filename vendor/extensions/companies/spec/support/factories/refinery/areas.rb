
FactoryGirl.define do
  factory :area, :class => Refinery::Companies::Area do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

