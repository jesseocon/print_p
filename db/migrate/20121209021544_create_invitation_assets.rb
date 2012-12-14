class CreateInvitationAssets < ActiveRecord::Migration
  def change
    create_table :invitation_assets do |t|
      t.integer :invitation_id
      t.integer :asset_id

      t.timestamps
    end
    add_index :invitation_assets, [:invitation_id, :asset_id]
  end
end
