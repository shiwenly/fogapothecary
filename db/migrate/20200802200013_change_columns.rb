class ChangeColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :benefit1
    remove_column :products, :benefit2
    remove_column :products, :benefit3
    remove_column :products, :benefit4
    remove_column :products, :price_small
    remove_column :products, :price_large
    remove_column :products, :picture2
    remove_column :products, :picture3
    add_column :products, :title, :string
    add_column :products, :title1, :string
    add_column :products, :description1, :text
    add_column :products, :title2, :string
    add_column :products, :description2, :text
    add_column :products, :price, :text
  end
end
