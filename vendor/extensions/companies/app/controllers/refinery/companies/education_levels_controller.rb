module Refinery
  module Companies
    class EducationLevelsController < ::ApplicationController

      before_filter :find_all_education_levels
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @education_level in the line below:
        present(@page)
      end

      def show
        @education_level = EducationLevel.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @education_level in the line below:
        present(@page)
      end

    protected

      def find_all_education_levels
        @education_levels = EducationLevel.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/education_levels").first
      end

    end
  end
end
