class CreateOrderprods < ActiveRecord::Migration[6.1]
  def change
    create_table :orderprods do |t|
      t.integer :product_id
      t.string :name
      t.text :description
      t.integer :quantity
      t.decimal :price
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
