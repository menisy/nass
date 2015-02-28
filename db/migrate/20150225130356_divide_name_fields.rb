class DivideNameFields < ActiveRecord::Migration
  def up
    remove_column :refinery_personal_infos, :name
    add_column :refinery_personal_infos, :first_name, :string
    add_column :refinery_personal_infos, :last_name, :string

    remove_column :refinery_companies_contact_people, :name
    add_column :refinery_companies_contact_people, :first_name, :string
    add_column :refinery_companies_contact_people, :last_name, :string
  end

  def down
  end
end
