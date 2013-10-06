class CreateFlowcharts < ActiveRecord::Migration
  def change
    create_table :flowcharts do |t|

      t.timestamps
    end
  end
end
