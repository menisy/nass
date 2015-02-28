module Refinery
  module Companies
    module Admin
      class CitiesController < ::Refinery::AdminController

        crudify :'refinery/companies/city',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
