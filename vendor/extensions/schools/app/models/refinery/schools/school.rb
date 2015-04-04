module Refinery
  module Schools
    class School < Refinery::Core::BaseModel
      self.table_name = 'refinery_schools'

      attr_accessible :name, :description, :photo_id, :logo_id, :visible, :position

      validates :name, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'

      belongs_to :logo, :class_name => '::Refinery::Image'

      has_many :programs

      has_and_belongs_to_many :partners, class_name: '::Refinery::Companies::Partner', join_table: :school_partners

      scope :visible, -> { where(visible: true) }

    end
  end
end
