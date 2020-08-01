class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :benefit1
      t.string :benefit2
      t.string :benefit3
      t.string :benefit4
      t.integer :price_small
      t.integer :price_large
      t.string :picture1, default: "https://images.unsplash.com/photo-1496262967815-132206202600?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1590&q=80"
      t.string :picture2, default: "https://images.unsplash.com/photo-1496262967815-132206202600?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1590&q=80"
      t.string :picture3, default: "https://images.unsplash.com/photo-1496262967815-132206202600?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1590&q=80"
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
