module Refinery
  module Companies
    class JobTypesController < ::ApplicationController

      before_filter :find_all_job_types
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @job_type in the line below:
        present(@page)
      end

      def show
        @job_type = JobType.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @job_type in the line below:
        present(@page)
      end

    protected

      def find_all_job_types
        @job_types = JobType.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/job_types").first
      end

    end
  end
end
