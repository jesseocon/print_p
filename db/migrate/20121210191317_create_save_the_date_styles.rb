class CreateSaveTheDateStyles < ActiveRecord::Migration
  def change
    create_table :save_the_date_styles do |t|
      t.integer :save_the_date_id
      t.integer :style_id

      t.timestamps
    end
  end
end
