class AddFeaturedToInvitations < ActiveRecord::Migration
  def change
    add_column :invitations, :featured, :boolean
  end
end
