class AddColumnToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :statut, :string
    add_column :products, :type, :string
  end
end
