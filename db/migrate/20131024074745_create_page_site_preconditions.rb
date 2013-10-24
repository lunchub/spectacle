class CreatePageSitePreconditions < ActiveRecord::Migration
  def change
    create_table :page_site_preconditions do |t|
      t.references :page, index: true
      t.references :site_precondition, index: true

      t.timestamps
    end
  end
end
