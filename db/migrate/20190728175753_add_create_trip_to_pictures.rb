class AddCreateTripToPictures < ActiveRecord::Migration[6.0]
  def change
    add_reference :pictures, :create_trip, foreign_key: true
  end
end
