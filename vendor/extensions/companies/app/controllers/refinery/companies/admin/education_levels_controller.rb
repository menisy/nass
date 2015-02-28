module Refinery
  module Companies
    module Admin
      class EducationLevelsController < ::Refinery::AdminController

        crudify :'refinery/companies/education_level',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
