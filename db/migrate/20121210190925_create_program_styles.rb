class CreateProgramStyles < ActiveRecord::Migration
  def change
    create_table :program_styles do |t|
      t.integer :program_id
      t.integer :style_id

      t.timestamps
    end
  end
end
