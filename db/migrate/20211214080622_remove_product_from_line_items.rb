class RemoveProductFromLineItems < ActiveRecord::Migration[6.1]
  def change
    remove_reference :line_items, :product, null: false
  end
end
