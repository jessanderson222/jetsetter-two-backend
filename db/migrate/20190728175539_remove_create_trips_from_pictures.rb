class RemoveCreateTripsFromPictures < ActiveRecord::Migration[6.0]
  def change
    remove_column :pictures, :create_trips_id
  end
end
