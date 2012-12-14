class AddIndexToRsvpJunctionTables < ActiveRecord::Migration
  def change
    add_index :rsvp_colors, [:rsvp_id, :color_id]
    add_index :rsvp_seasons, [:rsvp_id, :season_id]
    add_index :rsvp_styles, [:rsvp_id, :style_id]
  end
end
