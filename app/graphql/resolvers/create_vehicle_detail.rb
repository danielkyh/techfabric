class Resolvers::CreateVehicleDetail < GraphQL::Function
  # arguments passed as "args"
  argument :make_id, !types.Int
  argument :vehicle_type_id, !types.Int
  argument :vehicle_type_name, !types.String

  # return type from the mutation
  type Types::VehicleDetailType

  # the mutation method
  # _obj - is parent object, which in this case is nil
  # args - are the arguments passed
  # _ctx - is the GraphQL context (which would be discussed later)
  def call(_obj, args, _ctx)
  	options = { 
  		make_id: args[:make_id],
  		vehicle_type_id: args[:vehicle_type_id],
  		vehicle_type_name: args[:vehicle_type_name]
  	}

    VehicleType.create(options)
  end
end
