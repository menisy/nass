module Refinery
  module Companies
    class Company < Refinery::Core::BaseModel
      self.table_name = 'refinery_companies'

      attr_accessible :company_name, :field, :main_address, :nob_egypt, :nob_abroad, :employer_id, :logo_id, :position, :contact_people_attributes, :logo

      validates :company_name, presence: true, uniqueness: true

      validates :field, :main_address, :nob_egypt, :nob_abroad, :logo_id, presence: true

      belongs_to :logo, :class_name => '::Refinery::Image'
    
      has_many :contact_people, dependent: :destroy

      has_many :jobs, class_name: '::Refinery::Companies::Job', dependent: :destroy

      accepts_nested_attributes_for :contact_people 

      belongs_to :employer
    end
  end
end
