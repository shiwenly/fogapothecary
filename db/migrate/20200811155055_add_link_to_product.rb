class AddLinkToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :toko_link, :string
    add_column :products, :shopee_link, :string
  end
end
