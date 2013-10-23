class CreatePageImages < ActiveRecord::Migration
  def change
    create_table :page_images do |t|
      t.string :name
      t.string :image

      t.references :page

      t.timestamps
    end
  end
end
