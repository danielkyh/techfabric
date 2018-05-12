class VehicleType < ApplicationRecord
	belongs_to :make, :foreign_key => :make_id
end
