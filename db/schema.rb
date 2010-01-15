# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100111201134) do

  create_table "answers", :force => true do |t|
    t.integer  "question_id"
    t.string   "name"
    t.integer  "code"
    t.string   "answer_text"
    t.integer  "sort_order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "base_forms", :force => true do |t|
    t.string   "name"
    t.string   "welcome"
    t.string   "thank_you"
    t.string   "group_sort_order_field"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "group_forms", :force => true do |t|
    t.integer  "base_form_id"
    t.string   "group_name"
    t.integer  "code"
    t.string   "long_name"
    t.string   "desc"
    t.string   "question_sort_order_field"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_types", :force => true do |t|
    t.string   "name"
    t.string   "output_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", :force => true do |t|
    t.integer  "group_form_id"
    t.string   "name"
    t.string   "code"
    t.integer  "question_type_id"
    t.integer  "sort_order"
    t.string   "header"
    t.string   "question_text"
    t.string   "textfield_size"
    t.string   "validation_text"
    t.string   "help_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_answers", :force => true do |t|
    t.integer  "sub_question_id"
    t.string   "name"
    t.integer  "code"
    t.string   "answer_text"
    t.integer  "sort_order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_questions", :force => true do |t|
    t.integer  "question_id"
    t.string   "name"
    t.string   "code"
    t.integer  "question_type_id"
    t.integer  "sort_order"
    t.string   "header"
    t.string   "question_text"
    t.string   "textfield_size"
    t.string   "validation_text"
    t.string   "help_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
