module Refinery
  module Companies
    class EducationLevel < Refinery::Core::BaseModel

      attr_accessible :name, :position

      translates :name

      class Translation
        attr_accessible :locale
      end

      validates :name, :presence => true, :uniqueness => true

      has_many :jobs

      has_many :personal_infos, class_name: '::Refinery::PersonalInfos::PersonalInfo'
    end
  end
end
