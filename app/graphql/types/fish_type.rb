Types::FishType = GraphQL::ObjectType.define do
  name "Fish"
  field :name, types.String
  field :price, types.Int
  field :description, types.String
  field :status, types.Boolean
  field :store, Types::StoreType
  field :image, types.String
end
