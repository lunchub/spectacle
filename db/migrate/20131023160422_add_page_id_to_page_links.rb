class AddPageIdToPageLinks < ActiveRecord::Migration
  def change
    add_reference :page_links, :page, index: true
  end
end
