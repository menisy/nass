class CreateJobApplications < ActiveRecord::Migration
  def change
    create_table :job_applications do |t|
      t.integer :student_id
      t.integer :job_id

      t.timestamps
    end
  end
end
