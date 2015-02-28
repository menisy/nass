module Refinery
  module Companies
    class Industry < Refinery::Core::BaseModel

      attr_accessible :name, :position

      translates :name

      class Translation
        attr_accessible :locale
      end

      validates :name, :presence => true, :uniqueness => true

      has_many :jobs

      has_many :companies
    end
  end
end
