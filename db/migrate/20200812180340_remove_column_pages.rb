class RemoveColumnPages < ActiveRecord::Migration[5.2]
  def change
    remove_column :pages, :product1
    remove_column :pages, :product2
    remove_column :pages, :product3
    remove_column :pages, :product4
    remove_column :pages, :title3
    remove_column :pages, :description3
  end
end
