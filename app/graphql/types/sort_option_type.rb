Types::SortOptionType = GraphQL::EnumType.define do
  name "SortOption"
	description "Possible sorting options"

  value("asc", "Sort by ascending")
  value("desc", "Sort by descending")
end
