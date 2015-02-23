module Refinery
  module Companies
    module Admin
      class ContactPeopleController < ::Refinery::AdminController

        crudify :'refinery/companies/contact_person',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
