class AddPersonalInfoIdToAddress < ActiveRecord::Migration
  def change
    add_column :refinery_addresses, :personal_info_id, :integer
  end
end
