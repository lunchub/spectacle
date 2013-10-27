class AddRequiredToPageFormElements < ActiveRecord::Migration
  def change
    add_column :page_form_elements, :required, :boolean
  end
end
