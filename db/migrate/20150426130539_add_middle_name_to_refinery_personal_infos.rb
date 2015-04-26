class AddMiddleNameToRefineryPersonalInfos < ActiveRecord::Migration
  def change
    add_column :refinery_personal_infos, :middle_name, :string
  end
end
