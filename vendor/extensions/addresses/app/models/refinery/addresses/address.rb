module Refinery
  module Addresses
    class Address < Refinery::Core::BaseModel
      self.table_name = 'refinery_addresses'

      attr_accessible :street_name, :apart_no, :building_no, :position,
                      :city_id, :area

      #validates :name, :presence => true, :uniqueness => true
      belongs_to :city

      belongs_to :personal_info

      belongs_to :company
    end
  end
end
