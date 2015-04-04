module Refinery
  module Schools
    class Program < Refinery::Core::BaseModel

      attr_accessible :name, :description, :visible, :position

      translates :name, :description

      class Translation
        attr_accessible :locale
      end

      validates :name, :presence => true, :uniqueness => true

      belongs_to :school
      has_many :courses

      scope :visible, -> { where(visible: true) }
    end
  end
end
