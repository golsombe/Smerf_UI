class CreateGroupForms < ActiveRecord::Migration
  def self.up
    create_table :group_forms do |t|
      t.integer :base_form_id
      t.string :group_name
      t.integer :code
      t.string :long_name
      t.string :desc
      t.string :question_sort_order_field

      t.timestamps
    end
  end

  def self.down
    drop_table :group_forms
  end
end
