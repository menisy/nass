class Employer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :company_attributes

  attr_accessor :address
  # attr_accessible :title, :body

  #has_one :personal_info, dependent: :destroy

  has_one :company, class_name: '::Refinery::Companies::Company', dependent: :destroy

  #accepts_nested_attributes_for :personal_info

  accepts_nested_attributes_for :company


  def name
    email.split('@')[0]
  end
end
