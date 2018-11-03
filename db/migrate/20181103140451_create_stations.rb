class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :description
      t.string :adress
      t.integer :long_degrees
      t.integer :long_min
      t.integer :long_seg
      t.integer :long_coordinate
      t.integer :lat_degrees
      t.integer :lat_min
      t.integer :lat_seg
      t.integer :lat_coordinate
      t.timestamps
    end
  end
end
