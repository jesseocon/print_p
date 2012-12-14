class CreateInvitationRsvps < ActiveRecord::Migration
  def change
    create_table :invitation_rsvps do |t|
      t.integer :invitation_id
      t.integer :rsvp_id

      t.timestamps
    end
    add_index :invitation_rsvps, [:invitation_id, :rsvp_id]
  end
end
