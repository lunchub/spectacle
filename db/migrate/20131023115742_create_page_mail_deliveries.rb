class CreatePageMailDeliveries < ActiveRecord::Migration
  def change
    create_table :page_mail_deliveries do |t|
      t.references :page, index: true
      t.references :mail_delivery, index: true

      t.timestamps
    end
  end
end
