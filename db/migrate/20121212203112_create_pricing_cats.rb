class CreatePricingCats < ActiveRecord::Migration
  def change
    create_table :pricing_cats do |t|
      t.string :name

      t.timestamps
    end
  end
end
