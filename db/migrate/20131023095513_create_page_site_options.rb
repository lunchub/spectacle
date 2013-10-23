class CreatePageSiteOptions < ActiveRecord::Migration
  def change
    create_table :page_site_options do |t|
      t.references :page, index: true
      t.references :site_option, index: true

      t.timestamps
    end
  end
end
