class QuestionType < ActiveRecord::Base
has_many :questions
has_many :sub_questions
end
