module Refinery
  module Schools
    module Admin
      class ProgramsController < ::Refinery::AdminController

        crudify :'refinery/schools/program',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
