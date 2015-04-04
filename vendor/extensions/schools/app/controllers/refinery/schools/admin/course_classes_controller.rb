module Refinery
  module Schools
    module Admin
      class CourseClassesController < ::Refinery::AdminController

        crudify :'refinery/schools/course_class',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
