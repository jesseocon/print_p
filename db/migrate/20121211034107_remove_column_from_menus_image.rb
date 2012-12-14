class RemoveColumnFromMenusImage < ActiveRecord::Migration
  def change
    remove_column :menus, :image_file_name
    remove_column :menus, :image_content_type
    remove_column :menus, :image_file_size
    remove_column :menus, :image_updated_at
    
    add_column :menus, :mimage_file_name, :string
    add_column :menus, :mimage_file_size, :integer
    add_column :menus, :mimage_content_type, :string
    add_column :menus, :mimage_updated_at, :datetime
    
  end
end
