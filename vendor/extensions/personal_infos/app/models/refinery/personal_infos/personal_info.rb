module Refinery
  module PersonalInfos
    class PersonalInfo < Refinery::Core::BaseModel
      self.table_name = 'refinery_personal_infos'

      belongs_to :user
      belongs_to :student
      belongs_to :employer


      attr_accessible :name, :nationality, :dob, :pob, :gender, :maritual_status, :languages, :address, :email, :degrees, :skills, :skilled_jobs, :position, :user_id, :student_id, :employer_id

      validates :name, :nationality,:dob, :pob, :gender, :maritual_status, :languages, :address, :email, :degrees, :skills, :skilled_jobs,
        presence: true
    end
  end
end
