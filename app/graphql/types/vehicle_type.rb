Types::VehicleType = GraphQL::ObjectType.define do
  name "Vehicle"
  description "Vehicle Model"
  field :id, !types.ID
  field :make_id, !types.Int
  field :vehicle_name, !types.String
  field :model_id, !types.Int
  field :make, Types::MakeType
end
