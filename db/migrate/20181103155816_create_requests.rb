class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.integer :long_degrees
      t.integer :long_min
      t.integer :long_seg
      t.integer :long_coordinate
      t.integer :lat_degrees
      t.integer :lat_min
      t.integer :lat_seg
      t.integer :lat_coordinate
      t.string :imac 
      t.belongs_to :user, index: true
      t.belongs_to :route, index: true
      t.timestamps
    end
  end
end
