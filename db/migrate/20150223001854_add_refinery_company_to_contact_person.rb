class AddRefineryCompanyToContactPerson < ActiveRecord::Migration
  def change
    add_column :refinery_companies_contact_people, :company_id, :integer
  end
end
