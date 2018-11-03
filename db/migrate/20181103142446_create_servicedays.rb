class CreateServicedays < ActiveRecord::Migration[5.0]
  def change
    create_table :servicedays do |t|
      t.string :description

      t.timestamps
    end
  end
end
