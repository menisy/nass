module Refinery
  module Addresses
    class Address < Refinery::Core::BaseModel
      self.table_name = 'refinery_addresses'

      attr_accessible :street_name, :apart_no, :building_no, :position,
                      :city_id, :area

      #validates :name, :presence => true, :uniqueness => true
      belongs_to :city, class_name: '::Refinery::Companies::City'

      belongs_to :personal_info, class_name: '::Refinery::PersonalInfos::PersonalInfo'

      belongs_to :company, class_name: '::Refinery::Companies::Company'
    end
  end
end
