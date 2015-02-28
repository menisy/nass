# This migration comes from refinery_companies (originally 8)
class CreateCompaniesCareerLevels < ActiveRecord::Migration

  def up
    create_table :refinery_companies_career_levels do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end

    Refinery::Companies::CareerLevel.create_translation_table! :name => :string

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-companies"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/companies/career_levels"})
    end

    drop_table :refinery_companies_career_levels

    Refinery::Companies::CareerLevel.drop_translation_table!

  end

end
