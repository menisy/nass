# This migration comes from refinery_companies (originally 10)
class CreateCompaniesAreas < ActiveRecord::Migration

  def up
    create_table :refinery_companies_areas do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end

    Refinery::Companies::Area.create_translation_table! :name => :string

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-companies"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/companies/areas"})
    end

    drop_table :refinery_companies_areas

    Refinery::Companies::Area.drop_translation_table!

  end

end
