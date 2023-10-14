class CreateSellerConditions < ActiveRecord::Migration[7.0]
  def change
    create_table :seller_conditions do |t|
      t.references :seller, null: false, foreign_key: true
      t.references :condition, null: false, foreign_key: true

      t.timestamps
    end
  end
end
