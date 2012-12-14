class CreateMenuStyles < ActiveRecord::Migration
  def change
    create_table :menu_styles do |t|
      t.integer :menu_id
      t.integer :style_id

      t.timestamps
    end
    add_index :menu_styles, [:menu_id, :style_id]
  end
end
