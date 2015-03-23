class DropJobApplicationsTable < ActiveRecord::Migration
  def change
    drop_table :job_applications
  end
end
