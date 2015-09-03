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

      before_save :normalize_mobile


      attr_accessible :arabic_name, :degrees, :english_name, :middle_name,
      :registration_number, :misc, :nass_graduate, :address_attributes,
      :address, :first_name, :last_name, :nationality, :dob, :pob, :gender,
      :maritual_status, :languages, :address, :email, :skills, :skilled_jobs,
      :position, :user_id, :student_id, :employer_id, :education_level_id, :mobile

      validates :arabic_name, :english_name, :nationality,:dob,
      :pob, :gender, :maritual_status, :languages, :address, :email, :skills,
      :skilled_jobs,
        presence: true

      validates :mobile, uniqueness: true

      scope :nass_graduate, -> { where(nass_graduate: true)}
      scope :not_nass_graduate, -> { where(nass_graduate: false)}
      scope :list,              -> { order('created_at ASC') }


      def normalize_mobile
        mobile = mobile.to_s
        if mobile && mobile[0] == '0'
          mobile[0] = ''
        end
      end

      def self.import(file)
        spreadsheet = open_spreadsheet(file)
        header = spreadsheet.row(1)
        header = header.map(&:parameterize).map(&:underscore)
        (2..spreadsheet.last_row).each do |i|
          logger.error "*"*100
          logger.error spreadsheet.row(i)
          row = Hash[[header, spreadsheet.row(i)].transpose]
          logger.error row["mobile"]
          us = find_by_mobile(row["mobile"].to_s)
          #(logger.error (us.id.to_s + us.english_name + us.arabic_name)) if us
          address           = row.delete "address"

          unless row["mobile"].blank?
            record = find_by_mobile(row["mobile"].to_i.to_s)
          end

          record = new unless record
          #record            = find_by_mobile(row["mobile"].to_s) || new
          record.attributes = row.to_hash.slice(*accessible_attributes)
          unless address.blank?
            splitted = address.split ","
            record.build_address unless record.address
            record.address.apart_no     = splitted[0]
            record.address.building_no  = splitted[1]
            record.address.street_name  = splitted[2]
            record.address.area         = splitted[3]
            record.address.city         = ::Refinery::Companies::City.find_by_name(splitted[4])
          end
          #record.save!(validate: false)
          record.save! if record.valid?
        end
      end

      def self.open_spreadsheet(file)
        require 'roo'

        case File.extname(file.original_filename)
        when ".csv" then ::Roo::Csv.new(file.path, nil, :ignore)
        when ".xls" then ::Roo::Excel.new(file.path, nil, :ignore)
        when ".xlsx" then ::Roo::Excelx.new(file.path, nil, :ignore)
        else raise "Unknown file type: #{file.original_filename}"
        end
      end


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
        I18n.current_locale == :en ? english_name : arabic_name
      end

      def city
        address.try(:city)
      end

      def gender_string
        ["-","Male", "Female"][gender || 0]
      end

      def maritual_status_string
        ["-","single", "married", "divorced", "widowed"][maritual_status || 0]
      end
    end
  end
end
