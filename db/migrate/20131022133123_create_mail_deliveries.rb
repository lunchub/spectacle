class CreateMailDeliveries < ActiveRecord::Migration
  def change
    create_table :mail_deliveries do |t|
      t.string :name

      t.references :page

      t.timestamps
    end
  end
end
