class CreateBuses < ActiveRecord::Migration[5.0]
  def change
    create_table :buses do |t|
      t.string :registration_tag
      t.integer :capacity
      t.boolean :disability
      t.date :create_date
      t.boolean :dog_service

      t.timestamps
    end
  end
end
