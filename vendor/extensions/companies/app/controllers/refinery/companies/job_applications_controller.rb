module Refinery
  module Companies
    class JobApplicationsController < ::ApplicationController

      before_filter :find_all_job_applications
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @job_application in the line below:
        present(@page)
      end

      def show
        @job_application = JobApplication.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @job_application in the line below:
        present(@page)
      end

    protected

      def find_all_job_applications
        @job_applications = JobApplication.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/job_applications").first
      end

    end
  end
end
