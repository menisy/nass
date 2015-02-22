module Refinery
  module PersonalInfos
    module Admin
      class PersonalInfosController < ::Refinery::AdminController

        crudify :'refinery/personal_infos/personal_info',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
