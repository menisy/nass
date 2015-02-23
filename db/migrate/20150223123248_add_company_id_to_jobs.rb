class AddCompanyIdToJobs < ActiveRecord::Migration
  def change
    add_column :refinery_companies_jobs, :company_id, :integer
  end
end
