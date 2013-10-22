class CreatePagePreconditions < ActiveRecord::Migration
  def change
    create_table :page_preconditions do |t|
      t.string :title

      t.references :page

      t.timestamps
    end
  end
end
