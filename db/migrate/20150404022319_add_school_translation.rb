class AddSchoolTranslation < ActiveRecord::Migration
  def up
    Refinery::Schools::School.create_translation_table! :name => :string, :description => :string
  end

  def down
    Refinery::Schools::School.drop_translation_table!
  end
end
