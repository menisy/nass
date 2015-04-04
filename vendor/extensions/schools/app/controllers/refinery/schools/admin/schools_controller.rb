module Refinery
  module Schools
    module Admin
      class SchoolsController < ::Refinery::AdminController

        crudify :'refinery/schools/school',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
