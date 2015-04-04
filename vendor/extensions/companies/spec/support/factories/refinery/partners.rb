
FactoryGirl.define do
  factory :partner, :class => Refinery::Companies::Partner do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

