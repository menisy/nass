module Refinery
  module HomePhotos
    class HomePhoto < Refinery::Core::BaseModel
      self.table_name = 'refinery_home_photos'

      attr_accessible :description, :photo_id, :link, :position

      translates :description, :link

      class Translation
        attr_accessible :locale
      end

      validates :description, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
