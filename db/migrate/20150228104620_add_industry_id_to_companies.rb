class AddIndustryIdToCompanies < ActiveRecord::Migration
  def change
    add_column :refinery_companies, :industry_id, :integer
  end
end
