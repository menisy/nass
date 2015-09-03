class AddCodeToCourses < ActiveRecord::Migration
  def change
    add_column :refinery_schools_courses, :code, :string
  end
end
