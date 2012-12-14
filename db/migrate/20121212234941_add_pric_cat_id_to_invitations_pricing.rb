class AddPricCatIdToInvitationsPricing < ActiveRecord::Migration
  def change
    add_column :invitation_pricings, :pricing_cat_id, :integer
  end
end
