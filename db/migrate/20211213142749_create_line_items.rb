class CreateLineItems < ActiveRecord::Migration[6.1]
  def change
    create_table :line_items do |t|
      t.decimal :price, null: false
      t.integer :quantity, null: false
      t.decimal :total_price
      t.references :products
      t.timestamps
    end
  end
end
