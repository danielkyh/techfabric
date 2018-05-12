Types::VehicleDetailsType = GraphQL::ObjectType.define do
  name "Vehicle Details"

  description "Vehicle Type Model"
  field :id, !types.ID
  field :model_id, !types.Int
  field :make, Types::MakeType
end
