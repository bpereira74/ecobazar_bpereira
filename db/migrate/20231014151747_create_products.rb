class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.references :condition, null: false, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
