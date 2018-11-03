class CreateLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :logs do |t|
      t.timestamp :date_start
      t.string :description
      t.references :accion, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
