class CreateValidations < ActiveRecord::Migration
  def change
    create_table :validations do |t|
      t.string :name

      t.timestamps
    end
  end
end
