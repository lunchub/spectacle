class CreateSiteOptions < ActiveRecord::Migration
  def change
    create_table :site_options do |t|
      t.string :name

      t.references :page

      t.timestamps
    end
  end
end
