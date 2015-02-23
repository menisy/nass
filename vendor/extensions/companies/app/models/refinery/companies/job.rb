module Refinery
  module Companies
    class Job < Refinery::Core::BaseModel

      attr_accessible :name, :position, :number, :joining_date, :salary_from, :salary_to, :incentive, :days_off, :social_insurance, :medical_insurance, :transportation, :job_description, :qualifications, :work_conditions, :position, :company_id

      validates :name, :position, :number, :joining_date, :salary_from, :salary_to, :incentive, :days_off, :job_description, :qualifications, :work_conditions, presence: true
    
      belongs_to :company
    end
  end
end
