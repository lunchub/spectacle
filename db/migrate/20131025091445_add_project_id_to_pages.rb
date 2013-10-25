class AddProjectIdToPages < ActiveRecord::Migration
  def change
    add_reference :pages, :project, index: true
  end
end
