class CreateProgramColors < ActiveRecord::Migration
  def change
    create_table :program_colors do |t|
      t.integer :program_id
      t.integer :color_id

      t.timestamps
    end
  end
end
