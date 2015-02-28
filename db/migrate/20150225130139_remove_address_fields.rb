class RemoveAddressFields < ActiveRecord::Migration
  def up
    remove_column :refinery_personal_infos, :address
    remove_column :refinery_companies, :main_address
  end

  def down
  end
end
