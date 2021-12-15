class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title, null:false
      t.text :description
      t.references :supplier
      t.timestamps
    end
  end
end
