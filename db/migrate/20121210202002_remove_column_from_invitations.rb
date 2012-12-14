class RemoveColumnFromInvitations < ActiveRecord::Migration
  def change
    remove_column :invitations, :image_update_at
    add_column :invitations, :image_updated_at, :datetime
    remove_column :menus, :image_update_at
    add_column :menus, :image_updated_at, :datetime
  end
end
