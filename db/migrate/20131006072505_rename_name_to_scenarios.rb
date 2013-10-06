class RenameNameToScenarios < ActiveRecord::Migration
  def change
    rename_column :scenarios, :name, :title
  end
end
