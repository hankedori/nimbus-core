class AddReferencesToOrderDetails < ActiveRecord::Migration[5.0]
  def change
    add_reference :order_details, :order, foreign_key: true
    add_reference :order_details, :product, foreign_key: true
  end
end
