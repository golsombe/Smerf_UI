class Question < ActiveRecord::Base
belongs_to :group_form
belongs_to :question_type
has_many :answers
end
