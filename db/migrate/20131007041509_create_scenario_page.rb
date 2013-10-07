class CreateScenarioPage < ActiveRecord::Migration
  def up
    create_table :scenarios_pages, id: false do |t|
      t.references :scenario
      t.references :page
    end
  end

  def down
    drop_table :scenarios_pages
  end
end
