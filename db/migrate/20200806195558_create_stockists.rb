class CreateStockists < ActiveRecord::Migration[5.2]
  def change
    create_table :stockists do |t|
      t.string :category
      t.string :city
      t.string :name
      t.string :website
      t.string :statut
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
