class AddColumnToJournal < ActiveRecord::Migration[5.2]
  def change
    add_column :journals, :statut, :string
  end
end
