Types::SortableMakeColumnsType = GraphQL::EnumType.define do
  name "SortableMakeColumns"
  description "Possible sorting column"

  value("id", "Sort by id")
  value("make_id", "Sort by make_id")
  value("make_name", "Sort by make_name")
end

