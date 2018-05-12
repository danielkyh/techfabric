Types::SortableVehicleColumnType = GraphQL::EnumType.define do
  name "SortableVehicleColumn"
	description "Possible sorting options"

  value("id", "Sort by id")
  value("make_id", "Sort by vehichle type id")
  value("vehicle_name", "Sort by vehichle type name")
  value("model_id", "Sort by model id")
end
