class CreateSaveTheDateSeasons < ActiveRecord::Migration
  def change
    create_table :save_the_date_seasons do |t|
      t.integer :save_the_date_id
      t.integer :season_id

      t.timestamps
    end
  end
end
