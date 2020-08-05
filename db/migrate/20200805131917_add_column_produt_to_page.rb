class AddColumnProdutToPage < ActiveRecord::Migration[5.2]
  def change
    add_column :pages, :product1, :integer
    add_column :pages, :product2, :integer
    add_column :pages, :product3, :integer
    add_column :pages, :product4, :integer
  end
end
