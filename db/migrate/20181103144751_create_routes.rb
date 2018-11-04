class CreateRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :routes do |t|
      t.string :description
      t.boolean :cyclic
      t.integer :time_route
#      t.references :district, foreign_key: true
      t.timestamps
    end
  
      create_table :routes_stations, id: false do |t|
          t.belongs_to :station, index: true
          t.belongs_to :route, index: true
    end
      create_table :buses_routes, id: false do |t|
          t.belongs_to :bus, index: true
          t.belongs_to :route, index: true
     end
      create_table :routes_timetables, id: false do |t|
          t.belongs_to :timetable, index: true
          t.belongs_to :route, index: true
     end
     
  end
end
