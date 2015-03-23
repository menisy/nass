# This migration comes from refinery_companies (originally 10)
class CreateCompaniesJobApplications < ActiveRecord::Migration

  def up
    create_table :refinery_companies_job_applications do |t|
      t.integer :status
      t.integer :position
      t.integer :student_id
      t.integer :job_id

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-companies"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/companies/job_applications"})
    end

    drop_table :refinery_companies_job_applications

  end

end
