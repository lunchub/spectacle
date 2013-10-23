class AddFromPageIdToPageLinks < ActiveRecord::Migration
  def change
    add_column :page_links, :from_page_id, :integer
  end
end
