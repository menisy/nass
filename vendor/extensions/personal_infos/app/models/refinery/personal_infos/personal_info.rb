module Refinery
  module PersonalInfos
    class PersonalInfo < Refinery::Core::BaseModel
      self.table_name = 'refinery_personal_infos'

      belongs_to :user
      belongs_to :student
      #belongs_to :employer

      belongs_to :education_level, class_name: '::Refinery::Companies::EducationLevel'

      has_one :address, class_name: '::Refinery::Addresses::Address'
      has_one :city, through: :address

      accepts_nested_attributes_for :address


      attr_accessible :first_name, :last_name, :middle_name, :nass_graduate, :address_attributes, :address, :first_name, :last_name, :nationality, :dob, :pob, :gender, :maritual_status, :languages, :address, :email, :skills, :skilled_jobs, :position, :user_id, :student_id, :employer_id, :education_level_id, :mobile

      validates :first_name, :last_name, :middle_name, :nationality,:dob, :pob, :gender, :maritual_status, :languages, :address, :email, :skills, :skilled_jobs,
        presence: true

      scope :nass_graduate, -> { where(nass_graduate: true)}
      scope :not_nass_graduate, -> { where(nass_graduate: false)}
      scope :list,              -> { order('created_at ASC') }


      def self.filter(filter={})
        result = self.list#.includes(address: [:city])
        filter.each do |key, value|
          case key.to_sym
          when :city_id
            result = result.joins(:address).where(refinery_addresses: {city_id: value})
          else
            result = result.where(key => value) unless value.blank?
          end
        end
        result
      end


      def name
        first_name.to_s + ' ' + middle_name.to_s + ' ' + last_name.to_s
      end

      def city
        address.try(:city)
      end

      def gender_string
        ["-","Male", "Female"][gender]
      end

      def maritual_status_string
        ["-","single", "married", "divorced", "widowed"][maritual_status]
      end
    end
  end
end
