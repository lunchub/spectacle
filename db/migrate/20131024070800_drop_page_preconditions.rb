class DropPagePreconditions < ActiveRecord::Migration
  def change
    drop_table :page_preconditions
  end
end
