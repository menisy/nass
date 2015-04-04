class AddMobileNumberToPersonalInfos < ActiveRecord::Migration
  def change
    add_column :refinery_personal_infos, :mobile, :string
  end
end
