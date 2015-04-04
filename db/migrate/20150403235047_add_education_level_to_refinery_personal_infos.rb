class AddEducationLevelToRefineryPersonalInfos < ActiveRecord::Migration
  def change
    add_column :refinery_personal_infos, :education_level_id, :integer
  end
end
