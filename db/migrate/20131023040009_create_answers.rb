class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :comment

      t.references :question

      t.timestamps
    end
  end
end
