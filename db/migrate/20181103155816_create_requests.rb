class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.float :latitude
      t.float :longitude
      t.geometry :string
      t.string :imac 
      t.belongs_to :user, index: true
      t.belongs_to :route, index: true
      t.timestamps
    end
  end
end
