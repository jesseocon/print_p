class CreateInvitationSeasons < ActiveRecord::Migration
  def change
    create_table :invitation_seasons do |t|
      t.integer :invitation_id
      t.integer :season_id

      t.timestamps
    end
    add_index :invitation_seasons, [:invitation_id, :season_id]
  end
end
