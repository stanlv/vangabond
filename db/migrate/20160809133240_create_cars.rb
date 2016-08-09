class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :seats
      t.string :brand
      t.string :model
      t.date :year_of_production
      t.text :description
      t.string :location
      t.string :category
      t.integer :price_per_day
      t.integer :km
      t.string :features
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
