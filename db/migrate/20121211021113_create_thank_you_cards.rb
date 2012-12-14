class CreateThankYouCards < ActiveRecord::Migration
  def change
    create_table :thank_you_cards do |t|
      t.string :name
      t.text :description
      t.string :tyimage_file_name
      t.integer :tyimage_file_size
      t.string :tyimage_content_type
      t.datetime :tyimage_updated_at

      t.timestamps
    end
  end
end
