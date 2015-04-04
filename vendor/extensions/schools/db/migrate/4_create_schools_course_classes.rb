class CreateSchoolsCourseClasses < ActiveRecord::Migration

  def up
    create_table :refinery_schools_course_classes do |t|
      t.string :name
      t.string :code
      t.boolean :visible
      t.date :start_date
      t.date :end_date
      t.integer :status
      t.integer :position
      t.integer :course_id

      t.timestamps
    end

    Refinery::Schools::CourseClass.create_translation_table! :name => :string

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-schools"})
    end

    drop_table :refinery_schools_course_classes

    Refinery::Schools::CourseClass.drop_translation_table!

  end

end
