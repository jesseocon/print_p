class CreateInvitationColors < ActiveRecord::Migration
  def change
    create_table :invitation_colors do |t|
      t.integer :invitation_id
      t.integer :color_id

      t.timestamps
    end
    add_index :invitation_colors, [:invitation_id, :color_id]
  end
end
