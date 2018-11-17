class CreateOnlineroutes < ActiveRecord::Migration[5.0]
  def change
    create_table :onlineroutes do |t|
      t.float :latitude
      t.float :longitude
      t.geometry :string
      t.references :bus, foreign_key: true
      t.references :route, foreign_key: true

      t.timestamps
    end
  end
end
