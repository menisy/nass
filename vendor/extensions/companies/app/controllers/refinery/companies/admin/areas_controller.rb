module Refinery
  module Companies
    module Admin
      class AreasController < ::Refinery::AdminController

        crudify :'refinery/companies/area',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
