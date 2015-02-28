class CreateCompaniesEducationLevels < ActiveRecord::Migration

  def up
    create_table :refinery_companies_education_levels do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end

    Refinery::Companies::EducationLevel.create_translation_table! :name => :string

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-companies"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/companies/education_levels"})
    end

    drop_table :refinery_companies_education_levels

    Refinery::Companies::EducationLevel.drop_translation_table!

  end

end
