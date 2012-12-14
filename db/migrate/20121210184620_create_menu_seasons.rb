class CreateMenuSeasons < ActiveRecord::Migration
  def change
    create_table :menu_seasons do |t|
      t.integer :menu_id
      t.integer :season_id

      t.timestamps
    end
    add_index :menu_seasons, [:menu_id, :season_id]
  end
end
