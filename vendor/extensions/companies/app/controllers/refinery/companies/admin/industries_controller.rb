module Refinery
  module Companies
    module Admin
      class IndustriesController < ::Refinery::AdminController

        crudify :'refinery/companies/industry',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
