# This migration comes from refinery_companies (originally 12)
class CreateCompaniesSubscriptions < ActiveRecord::Migration

  def up
    create_table :refinery_companies_subscriptions do |t|
      t.string :name
      t.integer :level, default: 0
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-companies"})
    end

    drop_table :refinery_companies_subscriptions

  end

end
