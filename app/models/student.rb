class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  # attr_accessible :title, :body

  has_one :personal_info, class_name: '::Refinery::PersonalInfos::PersonalInfo', dependent: :destroy

  accepts_nested_attributes_for :personal_info

  def name
    unless personal_info.name.blank?
      personal_info.name.titleize
    else
      email
    end
  end
end
