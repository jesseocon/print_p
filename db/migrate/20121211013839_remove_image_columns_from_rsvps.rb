class RemoveImageColumnsFromRsvps < ActiveRecord::Migration
  def change
    remove_column :rsvps, :image_file_name
    remove_column :rsvps, :image_file_size
    remove_column :rsvps, :image_content_type
    remove_column :rsvps, :image_updated_at
    
    add_column :rsvps, :rsvpsimage_file_name, :string
    add_column :rsvps, :rsvpsimage_file_size, :integer
    add_column :rsvps, :rsvpsimage_content_type, :string
    add_column :rsvps, :rsvpsimage_updated_at, :datetime
  end
end
