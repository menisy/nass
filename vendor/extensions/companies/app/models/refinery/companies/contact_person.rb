module Refinery
  module Companies
    class ContactPerson < Refinery::Core::BaseModel

      attr_accessible :name, :first_name, :last_name, :email, :mobile, :land_line, :position, :position

      validates :name, :first_name, :last_name, :email, :mobile, :land_line, :position, presence: true
    
      belongs_to :company

      def name
        first_name.to_s + ' ' + last_name.to_s
      end
    end
  end
end
