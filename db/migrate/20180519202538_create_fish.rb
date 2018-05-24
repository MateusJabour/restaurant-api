class CreateFish < ActiveRecord::Migration[5.1]
  def change
    create_table :fish, id: :uuid do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.boolean :status
      t.references :store, foreign_key: true, type: :uuid
      t.string :image

      t.timestamps
    end
  end
end
