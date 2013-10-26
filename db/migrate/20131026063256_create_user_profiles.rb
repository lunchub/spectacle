class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.string :avater
      t.references :user, index: true

      t.timestamps
    end
  end
end
