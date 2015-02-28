class AddCityAndAreaToAddress < ActiveRecord::Migration
  def change
    unless column_exists? :refinery_addresses, :city_id
      add_column :refinery_addresses, :city_id, :integer
    end

    unless column_exists? :refinery_addresses, :area_id
      add_column :refinery_addresses, :area_id, :integer
    end
  end
end
