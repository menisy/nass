class CreateCompaniesJobs < ActiveRecord::Migration

  def up
    create_table :refinery_companies_jobs do |t|
      t.string :name
      t.string :position
      t.integer :number
      t.date :joining_date
      t.integer :salary_from
      t.integer :salary_to
      t.text :incentive
      t.text :days_off
      t.boolean :social_insurance
      t.boolean :medical_insurance
      t.boolean :transportation
      t.text :job_description
      t.text :qualifications
      t.text :work_conditions
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-companies"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/companies/jobs"})
    end

    drop_table :refinery_companies_jobs

  end

end
