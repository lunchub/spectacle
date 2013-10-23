class RemovePageNameAndUrlFromPageLinks < ActiveRecord::Migration
  def change
    remove_column :page_links, :page_name, :string
    remove_column :page_links, :url, :string
  end
end
