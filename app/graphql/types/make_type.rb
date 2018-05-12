Types::MakeType = GraphQL::ObjectType.define do
  name "Make"
  description "Vehicle Make"

  field :id, !types.ID
  field :make_id, !types.Int
  field :make_name, !types.String
  field :vehicles, !types[Types::VehicleType]
end
