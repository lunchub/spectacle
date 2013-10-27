class CreatePageFormElements < ActiveRecord::Migration
  def change
    create_table :page_form_elements do |t|
      t.string :element_name
      t.integer :input_type
      t.references :validation, index: true
      t.references :page, index: true

      t.timestamps
    end
  end
end
