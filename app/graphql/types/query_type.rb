Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.
  field :makes, !types[Types::MakeType] do
    resolve -> (obj, args, ctx) { Make.all }
  end

  field :vehicles, !types[Types::VehicleType] do
    resolve -> (obj, args, ctx) { Vehicle.all }
  end
end
