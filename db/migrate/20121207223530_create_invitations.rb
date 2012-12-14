class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.string :name
      t.string :description
      
      t.integer :color_id
      t.integer :style_id
      t.integer :season_id

      t.timestamps
    end
    add_index :invitations, :color_id
    add_index :invitations, :style_id
    add_index :invitations, :season_id
  end
end
