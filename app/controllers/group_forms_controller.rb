class GroupFormsController < ApplicationController
 active_scaffold :GroupForms do |config|
	config.actions = [:list,:show,:update,:create,:nested]
	config.columns = [:group_name,:long_name,:question_sort_order_field] 
	config.nested.add_link('Questions',[:questions])
 end
end
