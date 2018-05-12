Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  field :makes, !types[Types::MakeType] do
    argument :sort_column, Types::SortableMakeColumnsType, default_value: 'id'
    argument :sort_order, Types::SortOptionType, default_value: 'asc'
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
    argument :sort_column, Types::SortableVehicleColumnType, default_value: 'id'
    argument :sort_order, Types::SortOptionType, default_value: 'asc'
    argument :per_page, types.Int, default_value: 5
    argument :page, types.Int, default_value: 1

    resolve -> (obj, args, ctx) do
      Vehicle.all
              .order("#{args[:sort_column]} #{args[:sort_order]}")
              .limit(args[:per_page])
              .offset(args[:page] -1)
    end
  end

  field :vehicle_details, !types[Types::VehicleDetailType] do
    argument :sort_column, Types::SortableVehicleDetailColumnType, default_value: 'id'
    argument :sort_order, Types::SortOptionType, default_value: 'asc'
    argument :per_page, types.Int, default_value: 5
    argument :page, types.Int, default_value: 1

    resolve -> (obj, args, ctx) do
      VehicleType.all
                 .order("#{args[:sort_column]} #{args[:sort_order]}")
                 .limit(args[:per_page])
                 .offset(args[:page] -1)
    end
  end
end
