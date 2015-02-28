module Refinery
  module Companies
    class IndustriesController < ::ApplicationController

      before_filter :find_all_industries
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @industry in the line below:
        present(@page)
      end

      def show
        @industry = Industry.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @industry in the line below:
        present(@page)
      end

    protected

      def find_all_industries
        @industries = Industry.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/industries").first
      end

    end
  end
end
