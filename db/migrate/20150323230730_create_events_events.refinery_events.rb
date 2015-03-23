# This migration comes from refinery_events (originally 1)
class CreateEventsEvents < ActiveRecord::Migration

  def up
    create_table :refinery_events do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.text :description
      t.string :link
      t.string :link_title
      t.integer :photo_id
      t.integer :position

      t.timestamps
    end

    Refinery::Events::Event.create_translation_table! :name => :string, :description => :text, :link_title => :string

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-events"})
    end

    drop_table :refinery_events

    Refinery::Events::Event.drop_translation_table!

  end

end
