module Refinery
  module Schools
    class Course < Refinery::Core::BaseModel

      attr_accessible :name, :code, :description, :visible, :position, :program_id

      translates :name, :description

      class Translation
        attr_accessible :locale
      end

      validates :name, :presence => true, :uniqueness => true

      belongs_to :program
      has_many :course_classes

      scope :visible, -> { where(visible: true) }
    end
  end
end
