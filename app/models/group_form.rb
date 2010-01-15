class GroupForm < ActiveRecord::Base
belongs_to :base_form
has_many :questions
end
