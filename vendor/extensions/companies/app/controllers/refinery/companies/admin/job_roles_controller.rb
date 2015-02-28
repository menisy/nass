module Refinery
  module Companies
    module Admin
      class JobRolesController < ::Refinery::AdminController

        crudify :'refinery/companies/job_role',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
