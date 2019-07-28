class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.references :create_trips

      t.string :url
      t.string :caption

      t.timestamps
    end
  end
end
