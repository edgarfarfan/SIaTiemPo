class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :document
      t.string :email
      t.references :rol, foreign_key: true

      t.timestamps
    end
  end
end
