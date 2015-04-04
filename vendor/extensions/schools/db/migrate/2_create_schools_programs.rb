class CreateSchoolsPrograms < ActiveRecord::Migration

  def up
    create_table :refinery_schools_programs do |t|
      t.string :name
      t.text :description
      t.boolean :visible
      t.integer :position
      t.integer :school_id

      t.timestamps
    end

    Refinery::Schools::Program.create_translation_table! :name => :string, :description => :text

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-schools"})
    end

    drop_table :refinery_schools_programs

    Refinery::Schools::Program.drop_translation_table!

  end

end
