class CreateRsvpStyles < ActiveRecord::Migration
  def change
    create_table :rsvp_styles do |t|
      t.integer :rsvp_id
      t.integer :style_id

      t.timestamps
    end
  end
end
