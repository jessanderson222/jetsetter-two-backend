class CreateCreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :create_trips do |t|
      t.references :country, foreign_key: true
      t.references :user, foreign_key: true

      t.integer :rating
      t.string :description
      t.string :price
      t.string :name

      t.timestamps
    end
  end
end
