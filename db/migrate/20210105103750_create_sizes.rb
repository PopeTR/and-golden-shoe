class CreateSizes < ActiveRecord::Migration[6.0]
  def change
    create_table :sizes do |t|
      t.string :content
      t.integer :number_in_stock
      t.references :colour, null: false, foreign_key: true

      t.timestamps
    end
  end
end
