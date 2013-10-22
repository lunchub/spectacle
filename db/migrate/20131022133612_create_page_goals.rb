class CreatePageGoals < ActiveRecord::Migration
  def change
    create_table :page_goals do |t|
      t.string :title

      t.references :page

      t.timestamps
    end
  end
end
