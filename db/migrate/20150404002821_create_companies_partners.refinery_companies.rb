# This migration comes from refinery_companies (originally 11)
class CreateCompaniesPartners < ActiveRecord::Migration

  def up
    create_table :refinery_companies_partners do |t|
      t.string :name
      t.text :description
      t.string :website
      t.integer :position

      t.timestamps
    end

    Refinery::Companies::Partner.create_translation_table! :name => :string, :description => :text

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-companies"})
    end

    drop_table :refinery_companies_partners

    Refinery::Companies::Partner.drop_translation_table!

  end

end
