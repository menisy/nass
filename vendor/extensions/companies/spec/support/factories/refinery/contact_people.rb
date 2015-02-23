
FactoryGirl.define do
  factory :contact_person, :class => Refinery::Companies::ContactPerson do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

