class ChangeAreaToStringInAddresses < ActiveRecord::Migration
  def change
    remove_column :refinery_addresses, :area_id
    add_column :refinery_addresses, :area, :string
  end
end
