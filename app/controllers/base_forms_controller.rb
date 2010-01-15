class BaseFormsController < ApplicationController
 active_scaffold :BaseForms do |config|
	config.actions = [:list,:show,:update,:create,:nested]
	config.columns = [:name, :welcome, :thank_you, :group_sort_order_field]
	config.nested.add_link('Groups', [:group_forms])
  end
end
