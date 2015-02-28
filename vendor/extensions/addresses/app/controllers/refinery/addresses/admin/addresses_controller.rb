module Refinery
  module Addresses
    module Admin
      class AddressesController < ::Refinery::AdminController

        crudify :'refinery/addresses/address',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
