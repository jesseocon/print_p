class CreateProgramSeasons < ActiveRecord::Migration
  def change
    create_table :program_seasons do |t|
      t.integer :program_id
      t.integer :season_id

      t.timestamps
    end
  end
end
