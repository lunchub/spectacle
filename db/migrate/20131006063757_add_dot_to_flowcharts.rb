class AddDotToFlowcharts < ActiveRecord::Migration
  def change
    add_column :flowcharts, :dot, :text
  end
end
