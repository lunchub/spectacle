class CreatePageConnectedPages < ActiveRecord::Migration
  def change
    create_table :page_connected_pages do |t|
      t.references :page, index: true
      t.integer :connected_page_id

      t.timestamps
    end
  end
end
