class CreateSitePreconditions < ActiveRecord::Migration
  def change
    create_table :site_preconditions do |t|
      t.string :title
      t.references :page, index: true

      t.timestamps
    end
  end
end
