Types::VehicleDetailsType = GraphQL::ObjectType.define do
  name "Vehicle Details"
	description "Vehicle Type Model"

  field :id, !types.ID
  field :vehicle_type_name, !types.String
  field :vehicle_type_id, !types.Int
  field :make, Types::MakeType
end
