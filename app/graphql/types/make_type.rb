Types::MakeType = GraphQL::ObjectType.define do
  name "Make"
  description "Vehicle Make"

  field :id, !types.ID
  field :make_id, !types.ID
  field :make_name, !types.String
  field :vehicles, !types[Types::VehicleType]
  field :vehicle_types, !types[Types::VehicleDetailType]
end
