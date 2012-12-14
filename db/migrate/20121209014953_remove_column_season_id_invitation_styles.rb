class RemoveColumnSeasonIdInvitationStyles < ActiveRecord::Migration
  def change
    remove_index :invitation_styles, [:invitation_id, :season_id]
    remove_column :invitation_styles, :season_id
    add_column :invitation_styles, :style_id, :integer
    add_index :invitation_styles, [:invitation_id, :style_id]
  end
end
