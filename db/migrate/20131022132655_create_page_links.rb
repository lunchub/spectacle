class CreatePageLinks < ActiveRecord::Migration
  def change
    create_table :page_links do |t|
      t.string :element_name
      t.string :page_name
      t.string :url

      t.references :page

      t.timestamps
    end
  end
end
