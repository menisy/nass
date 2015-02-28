module Refinery
  module Companies
    module Admin
      class JobTypesController < ::Refinery::AdminController

        crudify :'refinery/companies/job_type',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
