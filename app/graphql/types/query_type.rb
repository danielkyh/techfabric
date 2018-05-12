Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.
  field :makes, !types[Types::MakeType] do
    argument :sort_column, types.String, default_value: 'id'
    argument :sort_order, types.String, default_value: 'asc'
    argument :per_page, types.Int, default_value: 5
    argument :page, types.Int, default_value: 1

    resolve -> (obj, args, ctx) do
      Make.all
          .order("#{args[:sort_column]} #{args[:sort_order]}")
          .limit(args[:per_page])
          .offset(args[:page] -1)
    end
  end

  field :vehicles, !types[Types::VehicleType] do
    resolve -> (obj, args, ctx) { Vehicle.all }
  end

  field :vehicle_details, !types[Types::VehicleDetailType] do
    resolve -> (obj, args, ctx) { Vehicle.all }
  end
end
