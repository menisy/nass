class AddJobRelations < ActiveRecord::Migration
  def change
    add_column :refinery_companies_jobs, :industry_id, :integer
    add_column :refinery_companies_jobs, :job_role_id, :integer
    add_column :refinery_companies_jobs, :job_type_id, :integer
    add_column :refinery_companies_jobs, :education_level_id, :integer
    add_column :refinery_companies_jobs, :career_level_id, :integer
    add_column :refinery_companies_jobs, :city_id, :integer
    add_column :refinery_companies_jobs, :area_id, :integer
  end
end
