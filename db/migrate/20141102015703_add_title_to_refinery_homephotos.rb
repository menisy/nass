class AddTitleToRefineryHomephotos < ActiveRecord::Migration
  def change
    add_column :refinery_home_photos, :title, :string
  end
end
