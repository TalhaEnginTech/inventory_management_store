class RemoveProductsIdFromLineItems < ActiveRecord::Migration[6.1]
  def change
    remove_column :line_items, :products_id
  end
end
