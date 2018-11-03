class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.string :description
      t.integer :id_father
      t.string :link
      t.string :link_image

      t.timestamps
    end
     create_table :rols_menus, id: false do |t|
          t.belongs_to :rol, index: true
          t.belongs_to :menu, index: true
     end
  end
end
