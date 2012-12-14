class CreateSaveTheDates < ActiveRecord::Migration
  def change
    create_table :save_the_dates do |t|
      t.string :name
      t.text :description
      t.string :image_file_name
      t.integer :image_file_size
      t.string :image_content_type
      t.datetime :image_updated_at

      t.timestamps
    end
  end
end
