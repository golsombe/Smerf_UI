class CreateSubAnswers < ActiveRecord::Migration
  def self.up
    create_table :sub_answers do |t|
      t.integer :sub_question_id
      t.string :name
      t.integer :code
      t.string :answer_text
      t.integer :sort_order
      t.tinyint :default_answer

      t.timestamps
    end
  end

  def self.down
    drop_table :sub_answers
  end
end
