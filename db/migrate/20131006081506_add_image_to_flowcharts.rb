class AddImageToFlowcharts < ActiveRecord::Migration
  def change
    add_column :flowcharts, :image, :string
  end
end
