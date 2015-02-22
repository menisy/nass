# This migration comes from refinery_personal_infos (originally 1)
class CreatePersonalInfosPersonalInfos < ActiveRecord::Migration

  def up
    create_table :refinery_personal_infos do |t|
      t.string :name
      t.string :nationality
      t.date :dob
      t.string :pob
      t.integer :gender
      t.integer :maritual_status
      t.text :languages
      t.text :address
      t.string :email
      t.text :degrees
      t.text :skills
      t.text :skilled_jobs
      t.integer :user_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-personal_infos"})
    end

    drop_table :refinery_personal_infos

  end

end
