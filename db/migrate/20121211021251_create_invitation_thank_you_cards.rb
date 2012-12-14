class CreateInvitationThankYouCards < ActiveRecord::Migration
  def change
    create_table :invitation_thank_you_cards do |t|
      t.integer :invitation_id
      t.integer :thank_you_card_id

      t.timestamps
    end
    add_index :invitation_thank_you_cards, [:invitation_id, :thank_you_card_id], unique: true, name: "invitation_and_tycard_id_index"
  end
end
