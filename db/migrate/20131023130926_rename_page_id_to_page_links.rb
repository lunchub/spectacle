class RenamePageIdToPageLinks < ActiveRecord::Migration
  def change
    rename_column :page_links, :page_id, :to_page_id
  end
end
