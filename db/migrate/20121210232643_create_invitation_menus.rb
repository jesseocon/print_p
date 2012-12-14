class CreateInvitationMenus < ActiveRecord::Migration
  def change
    create_table :invitation_menus do |t|
      t.integer :invitation_id
      t.integer :menu_id

      t.timestamps
    end
    add_index :invitation_menus, [:invitation_id, :menu_id]
  end
end
