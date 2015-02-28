module Refinery
  module Companies
    module Admin
      class CareerLevelsController < ::Refinery::AdminController

        crudify :'refinery/companies/career_level',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
