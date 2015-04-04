
FactoryGirl.define do
  factory :course_class, :class => Refinery::Schools::CourseClass do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

