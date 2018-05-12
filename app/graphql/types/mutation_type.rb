Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createVehicleLink, function: Resolvers::CreateVehicleDetail.new
  field :createMake, 				function: Resolvers::CreateMake.new
end
