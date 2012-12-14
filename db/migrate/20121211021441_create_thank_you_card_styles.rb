class CreateThankYouCardStyles < ActiveRecord::Migration
  def change
    create_table :thank_you_card_styles do |t|
      t.integer :thank_you_card_id
      t.integer :style_id

      t.timestamps
    end
    add_index :thank_you_card_styles, [:thank_you_card_id, :style_id], :unique => true, :name => 'ty_id_and_style_id_index'
  end
end
