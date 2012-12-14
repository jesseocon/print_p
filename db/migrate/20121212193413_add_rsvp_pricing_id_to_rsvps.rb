class AddRsvpPricingIdToRsvps < ActiveRecord::Migration
  def change
    add_column :rsvps, :rsvp_pricing_id, :string
  end
end
