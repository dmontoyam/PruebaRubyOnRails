class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :client_id
      t.date :date
      t.decimal :subtotal
      t.decimal :total

      t.timestamps
    end
  end
end
