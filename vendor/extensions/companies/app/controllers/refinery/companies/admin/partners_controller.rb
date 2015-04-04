module Refinery
  module Companies
    module Admin
      class PartnersController < ::Refinery::AdminController

        crudify :'refinery/companies/partner',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
