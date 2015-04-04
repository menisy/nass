module Refinery
  module Companies
    class Subscription < Refinery::Core::BaseModel

      attr_accessible :name, :level, :position

      validates :name, :presence => true, :uniqueness => true

      has_many :companies
    end
  end
end
