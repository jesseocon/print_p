class AddImageToInvitations < ActiveRecord::Migration
  def change
    add_column :invitations, :image_file_name, :string
    add_column :invitations, :image_content_type, :string
    add_column :invitations, :image_file_size, :integer
    add_column :invitations, :image_update_at, :datetime
  end
end
