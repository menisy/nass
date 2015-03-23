class AddAreaToRefineryJobs < ActiveRecord::Migration
  def change
    add_column :refinery_companies_jobs, :area, :string
  end
end
