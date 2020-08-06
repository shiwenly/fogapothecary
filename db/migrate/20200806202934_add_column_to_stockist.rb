class AddColumnToStockist < ActiveRecord::Migration[5.2]
  def change
    add_column :stockists, :statut, :string
  end
end
