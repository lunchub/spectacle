class AddDetailToValidations < ActiveRecord::Migration
  def change
    add_column :validations, :detail, :text
  end
end
