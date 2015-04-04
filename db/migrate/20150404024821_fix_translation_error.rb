class FixTranslationError < ActiveRecord::Migration
  def change
    Refinery::Schools::School.drop_translation_table!
    Refinery::Schools::School.create_translation_table! :name => :string, :description => :text
  end
end
