module Refinery
  module Companies
    class ContactPeopleController < ::ApplicationController

      before_filter :find_all_contact_people
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @contact_person in the line below:
        present(@page)
      end

      def show
        @contact_person = ContactPerson.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @contact_person in the line below:
        present(@page)
      end

    protected

      def find_all_contact_people
        @contact_people = ContactPerson.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/contact_people").first
      end

    end
  end
end
