Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :addStore, Types::StoreType do
    argument :name, !types.String

    resolve ->(obj, args, ctx) {
      store = Store.create({ name: args[:name]})
      store.save!

      store
    }
  end

  field :addFishToStore, Types::FishType do
    argument :store_id, !types.String
    argument :name, !types.String
    argument :price, types.Int
    argument :description, types.String
    argument :status, types.Boolean
    argument :image, types.String

    resolve ->(obj, args, ctx) {
      store = Store.find_by_id(args[:store_id])
      fish = store.fish.new(args.to_h)
      fish.save!

      fish
    }
  end
end
