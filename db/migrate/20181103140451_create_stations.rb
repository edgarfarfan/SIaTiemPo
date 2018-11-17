class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :description
      t.string :adress
      t.float :latitude
      t.float :longitude
      t.geometry :string
      t.timestamps
    end
  end
end
