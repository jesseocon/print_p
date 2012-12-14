class CreateThankYouCardSeasons < ActiveRecord::Migration
  def change
    create_table :thank_you_card_seasons do |t|
      t.integer :thank_you_card_id
      t.integer :season_id

      t.timestamps
    end
    add_index :thank_you_card_seasons, [:thank_you_card_id, :season_id], :unique => true, :name => 'ty_id_and_season_id_index'
  end
end
