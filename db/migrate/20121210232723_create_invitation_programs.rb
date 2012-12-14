class CreateInvitationPrograms < ActiveRecord::Migration
  def change
    create_table :invitation_programs do |t|
      t.integer :invitation_id
      t.integer :program_id

      t.timestamps
    end
    add_index :invitation_programs, [:invitation_id, :program_id]
  end
end
