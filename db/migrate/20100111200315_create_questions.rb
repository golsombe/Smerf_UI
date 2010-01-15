class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.integer :group_form_id
      t.string :name
      t.string :code
      t.integer :question_type_id
      t.integer :sort_order
      t.string :header
      t.string :question_text
      t.string :textfield_size
      t.string :validation_text
      t.string :help_text

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
