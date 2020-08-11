class CreateFaqs < ActiveRecord::Migration[5.2]
  def change
    create_table :faqs do |t|
      t.string :statut
      t.string :question
      t.text :answer
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
