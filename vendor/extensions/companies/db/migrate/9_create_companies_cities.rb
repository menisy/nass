class CreateCompaniesCities < ActiveRecord::Migration

  def up
    create_table :refinery_companies_cities do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end

    Refinery::Companies::City.create_translation_table! :name => :string

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-companies"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/companies/cities"})
    end

    drop_table :refinery_companies_cities

    Refinery::Companies::City.drop_translation_table!

  end

end
