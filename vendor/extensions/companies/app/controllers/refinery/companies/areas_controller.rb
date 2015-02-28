module Refinery
  module Companies
    class AreasController < ::ApplicationController

      before_filter :find_all_areas
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @area in the line below:
        present(@page)
      end

      def show
        @area = Area.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @area in the line below:
        present(@page)
      end

    protected

      def find_all_areas
        @areas = Area.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/areas").first
      end

    end
  end
end
