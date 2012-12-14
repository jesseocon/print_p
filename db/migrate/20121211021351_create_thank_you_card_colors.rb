class CreateThankYouCardColors < ActiveRecord::Migration
  def change
    create_table :thank_you_card_colors do |t|
      t.integer :thank_you_card_id
      t.integer :color_id

      t.timestamps
    end
    add_index :thank_you_card_colors, [:thank_you_card_id, :color_id], :unique => true, :name => 'ty_id_and_color_id_index'
  end
end
