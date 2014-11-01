
FactoryGirl.define do
  factory :home_photo, :class => Refinery::HomePhotos::HomePhoto do
    sequence(:link) { |n| "refinery#{n}" }
  end
end

