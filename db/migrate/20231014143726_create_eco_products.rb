class CreateEcoProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :eco_products do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.references :condition, null: false, foreign_key: true
      t.integer :precio
      t.boolean :available

      t.timestamps
    end
  end
end
