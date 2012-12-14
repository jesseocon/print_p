class CreateRsvpColors < ActiveRecord::Migration
  def change
    create_table :rsvp_colors do |t|
      t.integer :rsvp_id
      t.integer :color_id

      t.timestamps
    end
  end
end
