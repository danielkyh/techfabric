class Make < ApplicationRecord
	self.primary_key = "make_id"
	has_many :vehicles
	has_many :vehicle_types
end
