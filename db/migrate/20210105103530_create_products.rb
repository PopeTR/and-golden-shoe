class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.references :brand, null: false, foreign_key: true
      t.references :product_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
