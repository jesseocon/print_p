class CreateRsvpSeasons < ActiveRecord::Migration
  def change
    create_table :rsvp_seasons do |t|
      t.integer :rsvp_id
      t.integer :season_id

      t.timestamps
    end
  end
end
