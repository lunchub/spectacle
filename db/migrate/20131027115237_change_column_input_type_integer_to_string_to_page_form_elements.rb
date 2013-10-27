class ChangeColumnInputTypeIntegerToStringToPageFormElements < ActiveRecord::Migration
  def change
    change_column :page_form_elements, :input_type, :string
  end
end
