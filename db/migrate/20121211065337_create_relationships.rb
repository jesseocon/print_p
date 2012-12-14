class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :alpha_id
      t.integer :beta_id

      t.timestamps
    end
    
    add_index :relationships, :alpha_id
    add_index :relationships, :beta_id
    add_index :relationships, [:alpha_id, :beta_id], unique: true
  end
end
