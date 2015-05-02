class AddVisibleToRefineryCompaniesJobs < ActiveRecord::Migration
  def change
    add_column :refinery_companies_jobs, :visible, :boolean
  end
end
