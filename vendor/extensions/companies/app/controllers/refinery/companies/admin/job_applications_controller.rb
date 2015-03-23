module Refinery
  module Companies
    module Admin
      class JobApplicationsController < ::Refinery::AdminController

        crudify :'refinery/companies/job_application',
                :xhr_paging => true

      end
    end
  end
end
