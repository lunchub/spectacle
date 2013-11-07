class CreateQuestionComments < ActiveRecord::Migration
  def change
    create_table :question_comments do |t|
      t.text :comment
      t.references :question, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
