Types::VehicleDetailType = GraphQL::ObjectType.define do
  name "VehicleDetail"
	description "Vehicle Detail Type Model"

  field :id, !types.ID
  field :vehicle_type_name, !types.String
  field :vehicle_type_id, !types.Int
  field :make, Types::MakeType
end
