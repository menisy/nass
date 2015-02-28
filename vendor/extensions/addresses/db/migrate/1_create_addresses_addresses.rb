class CreateAddressesAddresses < ActiveRecord::Migration

  def up
    create_table :refinery_addresses do |t|
      t.string :name
      t.string :street_name
      t.string :apart_no
      t.string :building_no
      t.integer :area_id
      t.integer :city_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-addresses"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/addresses/addresses"})
    end

    drop_table :refinery_addresses

  end

end
