class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :picture
      t.references :car, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
