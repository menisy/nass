module Refinery
  module Companies
    class Partner < Refinery::Core::BaseModel

      attr_accessible :name, :description, :website, :position

      translates :name, :description

      class Translation
        attr_accessible :locale
      end

      validates :name, :presence => true, :uniqueness => true

      has_and_belongs_to_many :schools, class_name: '::Refinery::Schools::School', join_table: :school_partners
    end
  end
end
