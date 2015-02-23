# This migration comes from refinery_companies (originally 1)
class CreateCompaniesCompanies < ActiveRecord::Migration

  def up
    create_table :refinery_companies do |t|
      t.string :company_name
      t.string :field
      t.text :main_address
      t.text :nob_egypt
      t.text :nob_abroad
      t.integer :logo_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-companies"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/companies/companies"})
    end

    drop_table :refinery_companies

  end

end
