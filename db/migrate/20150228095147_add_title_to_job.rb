class AddTitleToJob < ActiveRecord::Migration
  def change
    remove_column :refinery_companies_jobs, :job_title
    add_column :refinery_companies_jobs, :position, :integer
    add_column :refinery_companies_jobs, :title, :string
  end
end
