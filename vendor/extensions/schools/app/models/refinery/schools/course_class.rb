module Refinery
  module Schools
    class CourseClass < Refinery::Core::BaseModel

      attr_accessible :name, :code, :visible, :start_date, :end_date, :status, :position

      translates :name

      class Translation
        attr_accessible :locale
      end

      validates :name, :presence => true, :uniqueness => true
      belongs_to :course

      scope :visible, -> { where(visible: true) }
    end
  end
end
