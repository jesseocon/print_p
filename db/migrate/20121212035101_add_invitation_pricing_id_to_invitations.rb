class AddInvitationPricingIdToInvitations < ActiveRecord::Migration
  def change
    add_column :invitations, :invitation_pricing_id, :integer
  end
end
