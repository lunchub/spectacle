class CreatePageValidations < ActiveRecord::Migration
  def change
    create_table :page_validations do |t|
      t.references :page, index: true
      t.references :validation, index: true

      t.timestamps
    end
  end
end
