class CreateSchoolsPartnersRelation < ActiveRecord::Migration
  def change
    create_table :school_partners, id: false do |t|
      t.integer :school_id
      t.integer :partner_id
    end

    add_index :school_partners, :school_id
    add_index :school_partners, :partner_id
  end
end
