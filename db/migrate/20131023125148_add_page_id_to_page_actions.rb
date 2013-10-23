class AddPageIdToPageActions < ActiveRecord::Migration
  def change
    add_reference :page_actions, :page, index: true
  end
end
