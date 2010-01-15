class SubQuestion < ActiveRecord::Base
belongs_to :question
belongs_to :question_type
has_many :sub_answers
end