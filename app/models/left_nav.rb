class LeftNav < ActiveRecord::Base
	default_scope order: :rank
end
