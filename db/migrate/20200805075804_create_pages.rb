class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :banner_pic
      t.string :title
      t.text :description
      t.string :rounded_pic
      t.string :separation_pic
      t.string :title1
      t.text :description1
      t.string :square_pic
      t.string :title2
      t.text :description2
      t.string :benefit1
      t.string :benefit2
      t.string :benefit3
      t.string :benefit4
      t.string :title3
      t.text :description3
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
