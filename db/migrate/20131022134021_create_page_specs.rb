class CreatePageSpecs < ActiveRecord::Migration
  def change
    create_table :page_specs do |t|
      t.string :title

      t.references :page

      t.timestamps
    end
  end
end
