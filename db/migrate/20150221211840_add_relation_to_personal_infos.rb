class AddRelationToPersonalInfos < ActiveRecord::Migration
  def change
    add_column :refinery_personal_infos, :student_id, :integer
    add_column :refinery_personal_infos, :employer_id, :integer
  end
end
