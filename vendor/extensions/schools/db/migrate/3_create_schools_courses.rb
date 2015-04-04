class CreateSchoolsCourses < ActiveRecord::Migration

  def up
    create_table :refinery_schools_courses do |t|
      t.string :name
      t.text :description
      t.boolean :visible
      t.integer :position
      t.integer :program_id

      t.timestamps
    end

    Refinery::Schools::Course.create_translation_table! :name => :string, :description => :string

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-schools"})
    end

    drop_table :refinery_schools_courses

    Refinery::Schools::Course.drop_translation_table!

  end

end
