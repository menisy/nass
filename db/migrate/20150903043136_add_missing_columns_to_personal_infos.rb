class AddMissingColumnsToPersonalInfos < ActiveRecord::Migration
  def change
    add_column :refinery_personal_infos, :registration_number, :string
    add_column :refinery_personal_infos, :misc, :string
    rename_column :refinery_personal_infos, :first_name, :arabic_name
    rename_column :refinery_personal_infos, :last_name, :english_name
  end
end
