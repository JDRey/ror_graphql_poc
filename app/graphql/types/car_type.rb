Types::CarType = GraphQL::ObjectType.define do
  name "Car"

  field :model, !types.String, "The model of car"
  field :make, !types.String, "The make of the car"
  field :owner, !types.String, "The owner name of the car"
end