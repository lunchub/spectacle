class AddScenarioIdToFlowcharts < ActiveRecord::Migration
  def change
    add_column :flowcharts, :scenario_id, :integer
  end
end
