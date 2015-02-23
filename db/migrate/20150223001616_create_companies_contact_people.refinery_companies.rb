# This migration comes from refinery_companies (originally 2)
class CreateCompaniesContactPeople < ActiveRecord::Migration

  def up
    create_table :refinery_companies_contact_people do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.string :land_line
      t.string :position
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-companies"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/companies/contact_people"})
    end

    drop_table :refinery_companies_contact_people

  end

end
