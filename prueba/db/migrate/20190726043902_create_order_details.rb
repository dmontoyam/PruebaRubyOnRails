class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
      t.integer :order_id
      t.integer :reference_id
      t.integer :quantity
      t.decimal :subtotal

      t.timestamps
    end
  end
end
