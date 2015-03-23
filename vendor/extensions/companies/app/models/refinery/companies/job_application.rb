module Refinery
  module Companies
    class JobApplication < Refinery::Core::BaseModel

      belongs_to :job
      belongs_to :student

      validates :job, :student, presence: true

      attr_accessible :status, :position

      # def title was created automatically because you didn't specify a string field
      # when you ran the refinery:engine generator. <3 <3 Refinery CMS.
      def title
        "#{job.company.company_name} - #{job.title} - <b>#{student.name}</b>"
      end
    end
  end
end
