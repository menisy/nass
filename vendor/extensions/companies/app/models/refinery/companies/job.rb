module Refinery
  module Companies
    class Job < Refinery::Core::BaseModel

      attr_accessible :name, :title, :area, :city_id, :number, :joining_date, :salary_from, :salary_to, :incentive, :days_off, :social_insurance, :medical_insurance, :transportation, :job_description, :qualifications, :work_conditions, :position, :company_id

      validates :name, :title, :area, :city_id, :number, :joining_date, :salary_from, :salary_to, :incentive, :days_off, :job_description, :qualifications, :work_conditions, presence: true

      belongs_to :company

      belongs_to :industry

      belongs_to :job_role

      belongs_to :job_type

      belongs_to :education_level

      belongs_to :career_level

      belongs_to :city

      has_many :job_applications
    end
  end
end
