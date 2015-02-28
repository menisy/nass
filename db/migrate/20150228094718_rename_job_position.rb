class RenameJobPosition < ActiveRecord::Migration
  def up
    rename_column :refinery_companies_jobs, :position, :job_title
  end

  def down
  end
end
