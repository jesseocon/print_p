class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :fpurl
      t.string :fp_filename
      t.string :fp_mimetype
      t.boolean :fp_isWriteable
      t.integer :fp_size

      t.timestamps
    end
  end
end
