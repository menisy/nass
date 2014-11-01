module Refinery
  module HomePhotos
    module Admin
      class HomePhotosController < ::Refinery::AdminController

        crudify :'refinery/home_photos/home_photo',
                :title_attribute => 'description',
                :xhr_paging => true

      end
    end
  end
end
