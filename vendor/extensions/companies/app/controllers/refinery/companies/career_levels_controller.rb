module Refinery
  module Companies
    class CareerLevelsController < ::ApplicationController

      before_filter :find_all_career_levels
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @career_level in the line below:
        present(@page)
      end

      def show
        @career_level = CareerLevel.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @career_level in the line below:
        present(@page)
      end

    protected

      def find_all_career_levels
        @career_levels = CareerLevel.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/career_levels").first
      end

    end
  end
end
