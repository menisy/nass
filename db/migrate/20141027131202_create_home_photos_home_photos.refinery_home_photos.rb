# This migration comes from refinery_home_photos (originally 1)
class CreateHomePhotosHomePhotos < ActiveRecord::Migration

  def up
    create_table :refinery_home_photos do |t|
      t.text :description
      t.integer :photo_id
      t.string :link
      t.integer :position

      t.timestamps
    end

    Refinery::HomePhotos::HomePhoto.create_translation_table! :description => :text, link: :string

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-home_photos"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/home_photos/home_photos"})
    end

    drop_table :refinery_home_photos

    Refinery::HomePhotos::HomePhoto.drop_translation_table!

  end

end
