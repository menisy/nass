module Refinery
  module PersonalInfos
    class PersonalInfo < Refinery::Core::BaseModel
      self.table_name = 'refinery_personal_infos'

      belongs_to :user
      belongs_to :student
      belongs_to :employer

      belongs_to :education_level

      has_one :address, class_name: '::Refinery::Addresses::Address'

      accepts_nested_attributes_for :address


      attr_accessible :name, :address_attributes, :address, :first_name, :last_name, :nationality, :dob, :pob, :gender, :maritual_status, :languages, :address, :email, :degrees, :skills, :skilled_jobs, :position, :user_id, :student_id, :employer_id

      validates :name, :first_name, :last_name, :nationality,:dob, :pob, :gender, :maritual_status, :languages, :address, :email, :degrees, :skills, :skilled_jobs,
        presence: true

      def name
        first_name.to_s + ' ' + last_name.to_s
      end
    end
  end
end
