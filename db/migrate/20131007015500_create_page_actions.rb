class CreatePageActions < ActiveRecord::Migration
  def change
    create_table :page_actions do |t|
      t.string :title

      t.timestamps
    end
  end
end
