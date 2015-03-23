class JobApplication < ActiveRecord::Base
  belongs_to :job, class_name: 'Refinery::Companies::Job'
  belongs_to :student

  validates :job, :student, presence: true
end
