module Refinery
  module Schools
    module Admin
      class CoursesController < ::Refinery::AdminController

        crudify :'refinery/schools/course',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
