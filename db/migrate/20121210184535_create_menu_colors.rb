class CreateMenuColors < ActiveRecord::Migration
  def change
    create_table :menu_colors do |t|
      t.integer :menu_id
      t.integer :color_id

      t.timestamps
    end
    add_index :menu_colors, [:menu_id, :color_id]
  end
end
