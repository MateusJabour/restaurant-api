Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  
  field :store do
    type Types::StoreType
    argument :id, !types.ID
    description "Find a store by ID"
    resolve ->(obj, args, ctx) {
      Store.find_by(id: args[:id])
    }
  end

  field :fishes_from_store do
    type GraphQL::ListType.new(of_type: Types::FishType)
    argument :name, !types.String
    description 'Find fish from a specific store'
    resolve ->(obj, args, ctx) {
      Store.find_by(name: args[:name]).fish
    }
  end

  field :fish do
    type Types::FishType
    argument :id, !types.ID
    description 'Find fish by ID'
    resolve ->(obj, args, ctx) {
      Fish.find_by(id: args[:id])
    }
  end
end
