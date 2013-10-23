class AddPolymorphicAttributesToQuestions < ActiveRecord::Migration
  def self.up
    change_table :questions do |t|
      t.references :questionable, :polymorphic => true
    end
  end

  def self.down
    change_table :questions do |t|
      t.remove_references :questionable, :polymorphic => true
    end
  end
end
