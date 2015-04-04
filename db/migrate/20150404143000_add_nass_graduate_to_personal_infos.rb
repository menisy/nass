class AddNassGraduateToPersonalInfos < ActiveRecord::Migration
  def change
    add_column :refinery_personal_infos, :nass_graduate, :boolean, default: false
  end
end
