class CreateInvitationStyles < ActiveRecord::Migration
  def change
    create_table :invitation_styles do |t|
      t.integer :invitation_id
      t.integer :season_id

      t.timestamps
    end
    add_index :invitation_styles, [:invitation_id, :season_id]
  end
end
