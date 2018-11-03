class CreateTimetables < ActiveRecord::Migration[5.0]
  def change
    create_table :timetables do |t|
      t.time :hour_star
      t.string :hour_end
      t.references :serviceday, foreign_key: true

      t.timestamps
    end
  end
end
