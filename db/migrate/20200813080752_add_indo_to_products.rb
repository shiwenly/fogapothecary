class AddIndoToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :name_in, :string
    add_column :products, :title_in, :string
    add_column :products, :description_in, :text
    add_column :products, :title1_in, :string
    add_column :products, :description1_in, :text
    add_column :products, :title2_in, :string
    add_column :products, :description2_in, :text
    add_column :products, :price_in, :text
  end
end
