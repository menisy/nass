module Refinery
  module HomePhotos
    class HomePhotosController < ::ApplicationController

      before_filter :find_all_home_photos
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @home_photo in the line below:
        present(@page)
      end

      def show
        @home_photo = HomePhoto.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @home_photo in the line below:
        present(@page)
      end

    protected

      def find_all_home_photos
        @home_photos = HomePhoto.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/home_photos").first
      end

    end
  end
end
