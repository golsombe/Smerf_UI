class CreateBaseForms < ActiveRecord::Migration
  def self.up
    create_table :base_forms do |t|
      t.string :name
      t.string :welcome
      t.string :thank_you
      t.string :group_sort_order_field

      t.timestamps
    end
  end

  def self.down
    drop_table :base_forms
  end
end
