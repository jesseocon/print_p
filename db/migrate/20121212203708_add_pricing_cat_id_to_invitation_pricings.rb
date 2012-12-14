class AddPricingCatIdToInvitationPricings < ActiveRecord::Migration
  def change
    add_index :invitation_pricings, :pricing_cat_id
  end
end
