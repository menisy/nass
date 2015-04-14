module Refinery
  module PersonalInfos
    class PersonalInfo < Refinery::Core::BaseModel
      self.table_name = 'refinery_personal_infos'

      belongs_to :user
      belongs_to :student
      #belongs_to :employer

      belongs_to :education_level, class_name: '::Refinery::Companies::EducationLevel'

      has_one :address, class_name: '::Refinery::Addresses::Address'

      accepts_nested_attributes_for :address


      attr_accessible :first_name, :last_name, :nass_graduate, :address_attributes, :address, :first_name, :last_name, :nationality, :dob, :pob, :gender, :maritual_status, :languages, :address, :email, :skills, :skilled_jobs, :position, :user_id, :student_id, :employer_id, :education_level_id, :mobile

      validates :first_name, :last_name, :nationality,:dob, :pob, :gender, :maritual_status, :languages, :address, :email, :skills, :skilled_jobs,
        presence: true

      scope :nass_graduate, -> { where(nass_graduate: true)}
      scope :not_nass_graduate, -> { where(nass_graduate: false)}

      def name
        first_name.to_s + ' ' + last_name.to_s
      end

      def city
        address.try(:city)
      end
    end
  end
end
