class Resolvers::CreateMake < GraphQL::Function
  # arguments passed as "args"
  argument :make_id, !types.Int
  argument :make_name, !types.String

  # return type from the mutation
  type Types::MakeType

  # the mutation method
  # _obj - is parent object, which in this case is nil
  # args - are the arguments passed
  # _ctx - is the GraphQL context (which would be discussed later)
  def call(_obj, args, _ctx)
  	options = { 
  		make_id: args[:make_id],
  		make_name: args[:make_name]
  	}

    Make.create(options)
  end
end
