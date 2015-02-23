class AddEmployerIdToCompanies < ActiveRecord::Migration
  def change
    add_column :refinery_companies, :employer_id, :integer
  end
end
