class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :firstName
      t.string :secName
      t.string :firstLstname
      t.string :secLstname
      t.string :city
      t.string :phone
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
