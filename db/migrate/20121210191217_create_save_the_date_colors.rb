class CreateSaveTheDateColors < ActiveRecord::Migration
  def change
    create_table :save_the_date_colors do |t|
      t.integer :save_the_date_id
      t.integer :color_id

      t.timestamps
    end
  end
end
