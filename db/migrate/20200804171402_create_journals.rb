class CreateJournals < ActiveRecord::Migration[5.2]
  def change
    create_table :journals do |t|
      t.string :title
      t.text :description
      t.string :picture1, default: "image/upload/v1596465097/default_annonce_wxhhsp.png"
      t.string :picture2, default: "image/upload/v1596465097/default_annonce_wxhhsp.png"
      t.string :picture3, default: "image/upload/v1596465097/default_annonce_wxhhsp.png"
      t.string :picture4, default: "image/upload/v1596465097/default_annonce_wxhhsp.png"
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
