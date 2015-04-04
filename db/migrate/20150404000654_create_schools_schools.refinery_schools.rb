# This migration comes from refinery_schools (originally 1)
class CreateSchoolsSchools < ActiveRecord::Migration

  def up
    create_table :refinery_schools do |t|
      t.string :name
      t.text :description
      t.integer :photo_id
      t.integer :logo_id
      t.boolean :visible
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-schools"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/schools/schools"})
    end

    drop_table :refinery_schools

  end

end
