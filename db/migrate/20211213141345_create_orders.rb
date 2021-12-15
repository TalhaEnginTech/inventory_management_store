class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :company_name
      t.decimal :sub_total
      t.references :customer
      t.timestamps
    end
  end
end
