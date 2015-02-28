# This migration comes from refinery_companies (originally 4)
class CreateCompaniesIndustries < ActiveRecord::Migration

  def up
    create_table :refinery_companies_industries do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end

    Refinery::Companies::Industry.create_translation_table! :name => :string

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-companies"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/companies/industries"})
    end

    drop_table :refinery_companies_industries

    Refinery::Companies::Industry.drop_translation_table!

  end

end
