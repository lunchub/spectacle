class CreatePageFormTransfers < ActiveRecord::Migration
  def change
    create_table :page_form_transfers do |t|
      t.string :element_name
      t.references :page, index: true
      t.integer :to_page_id

      t.timestamps
    end
  end
end
