class CreateSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :cnic
      t.references :company
      t.timestamps
    end
  end
end
