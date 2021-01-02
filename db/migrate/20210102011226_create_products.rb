class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :All_products do |t|
      t.string :Name
      t.text :Description
      t.decimal :Price
      t.string :Image

      t.timestamps
    end
  end
end
