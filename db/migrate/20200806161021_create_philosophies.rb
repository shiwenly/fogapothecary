class CreatePhilosophies < ActiveRecord::Migration[5.2]
  def change
    create_table :philosophies do |t|
      t.string :picture1
      t.string :title
      t.text :description
      t.text :description1
      t.text :description2
      t.text :description3
      t.string :title1
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
