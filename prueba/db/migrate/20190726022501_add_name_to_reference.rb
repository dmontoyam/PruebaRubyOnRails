class AddNameToReference < ActiveRecord::Migration[5.2]
  def change
    add_column :references, :name, :string
  end
end
