class AddCompanyIdToAddress < ActiveRecord::Migration
  def change
    add_column :refinery_addresses, :company_id, :integer
  end
end
