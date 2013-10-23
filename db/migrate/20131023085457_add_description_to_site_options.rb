class AddDescriptionToSiteOptions < ActiveRecord::Migration
  def change
    add_column :site_options, :description, :text
  end
end
