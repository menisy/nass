module Refinery
  module Companies
    class Company < Refinery::Core::BaseModel
      self.table_name = 'refinery_companies'

      attr_accessible :company_name, :subscription_id, :main_address, :industry_id, :industry, :nob_egypt, :nob_abroad, :employer_id, :logo_id, :position, :contact_people_attributes, :address_attributes, :address, :logo, :field

      validates :company_name, presence: true, uniqueness: true

      validates :industry_id,:nob_egypt, :nob_abroad, :logo_id, presence: true

      belongs_to :logo, :class_name => '::Refinery::Image'

      has_many :contact_people, dependent: :destroy

      has_many :jobs, class_name: '::Refinery::Companies::Job', dependent: :destroy

      accepts_nested_attributes_for :contact_people

      belongs_to :employer

      belongs_to :industry

      belongs_to :subscription

      has_one :address, class_name: '::Refinery::Addresses::Address'

      accepts_nested_attributes_for :address
    end
  end
end
