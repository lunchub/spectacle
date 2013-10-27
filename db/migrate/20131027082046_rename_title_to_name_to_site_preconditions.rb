class RenameTitleToNameToSitePreconditions < ActiveRecord::Migration
  def change
    rename_column :site_preconditions, :title, :name
  end
end
