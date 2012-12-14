class AddIndexInvitationPricingIdToInvitations < ActiveRecord::Migration
  def change
    add_index :invitations, :invitation_pricing_id
  end
end
