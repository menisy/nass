module Refinery
  module Companies
    module Admin
      class JobsController < ::Refinery::AdminController

        crudify :'refinery/companies/job',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
