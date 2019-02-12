Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
  field :allCars do
    type types[Types::CarType]
    description "A list of all the cars"
    argument :make, types[types.String]
    resolve -> (obj, args, ctx) {
      Car.all.where(make: args[:make])
    }
  end
  
  field :firstFourCars do
    type types[Types::CarType]
    description "A list of the first four cars"

    resolve -> (obj, args, ctx) {
      Car.all.limit(4)
    }
  end

  field :carID do
    type Types::CarType
    description "Return a car based on ID"
    argument :number, !types.ID

    resolve -> (obj, args, ctx) { Car.find(args[:number]) }
  end

  field :car do
    type types[Types::CarType]
    description "Return a car with a specific ID"
    argument :id, types.ID
    argument :make, types[types.String], "The make of the cars"
    argument :model, types[types.String], "The model of the cars"
    argument :owner, types[types.String], "The first name of an owner "

    resolve -> (obj, args, ctx) do
      cars = Car.all
      if args[:id]
        Car.find(args[:id])
      end
      if args[:make] 
        cars = cars.where(make: args[:make])
      end
      if args[:model]
        cars = cars.where(model: args[:model])
      end
      if args[:owner]
        cars = cars.where(owner: args[:owner])
      end
      cars
    end
  end
end