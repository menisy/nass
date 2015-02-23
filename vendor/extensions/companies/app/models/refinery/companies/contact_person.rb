module Refinery
  module Companies
    class ContactPerson < Refinery::Core::BaseModel

      attr_accessible :name, :email, :mobile, :land_line, :position, :position

      validates :name, :email, :mobile, :land_line, :position, presence: true
    
      belongs_to :company
    end
  end
end
