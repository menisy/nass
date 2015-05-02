module Refinery
  module Companies
    class Job < Refinery::Core::BaseModel

      attr_accessible :name, :education_level_id, :visible, :industry_id, :title, :area, :city_id, :number, :joining_date, :salary_from, :salary_to, :incentive, :days_off, :social_insurance, :medical_insurance, :transportation, :job_description, :qualifications, :work_conditions, :position, :company_id

      validates :name, :title, :area, :city_id, :number, :joining_date, :salary_from, :salary_to, :incentive, :days_off, :job_description, :qualifications, :work_conditions, presence: true

      belongs_to :company

      belongs_to :industry

      belongs_to :job_role

      belongs_to :job_type

      belongs_to :education_level

      belongs_to :career_level

      belongs_to :city

      has_many :job_applications

      scope :list,          -> { order('created_at DESC') }
      scope :visible,       -> { where(visible: true) }

      def self.filter(filter={})
        result = self.list
        filter.each do |key, value|
          case key.to_sym
          when :kofta
          else
            result = result.where(key => value) unless value.blank?
          end
        end
        result
      end
    end
  end
end
