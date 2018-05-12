Types::SortableVehicleDetailColumnType = GraphQL::EnumType.define do
  name "SortableVehicleDetailColumn"

  value("id", "Sort by id")
  value("make_id", "Sort by vehichle type make id")
  value("vehicle_type_id", "Sort by vehichle type id")
  value("vehicle_type_name", "Sort by vehichle type name")
end
