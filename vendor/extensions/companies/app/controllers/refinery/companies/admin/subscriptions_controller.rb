module Refinery
  module Companies
    module Admin
      class SubscriptionsController < ::Refinery::AdminController

        crudify :'refinery/companies/subscription',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
