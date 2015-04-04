class AddSubscriptionIdToRefineryCompanies < ActiveRecord::Migration
  def change
    add_column :refinery_companies, :subscription_id, :integer
  end
end
