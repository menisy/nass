# This migration comes from refinery_companies (originally 6)
class CreateCompaniesJobTypes < ActiveRecord::Migration

  def up
    create_table :refinery_companies_job_types do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end

    Refinery::Companies::JobType.create_translation_table! :name => :string

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-companies"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/companies/job_types"})
    end

    drop_table :refinery_companies_job_types

    Refinery::Companies::JobType.drop_translation_table!

  end

end
