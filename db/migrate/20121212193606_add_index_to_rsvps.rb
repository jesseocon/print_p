class AddIndexToRsvps < ActiveRecord::Migration
  def change
    add_index :rsvps, :rsvp_pricing_id
  end
end
