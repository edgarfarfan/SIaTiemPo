class CreateAccions < ActiveRecord::Migration[5.0]
  def change
    create_table :accions do |t|
      t.string :description

      t.timestamps
    end
  end
end
