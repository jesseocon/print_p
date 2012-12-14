class CreateInvitationPricings < ActiveRecord::Migration
  def change
    create_table :invitation_pricings do |t|
      t.integer :quantity
      t.float :price

      t.timestamps
    end
  end
end
