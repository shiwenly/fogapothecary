class RenameColumnsPages < ActiveRecord::Migration[5.2]
  def change
    rename_column :pages, :separation_pic, :icone1_pic
    rename_column :pages, :rounded_pic, :icone2_pic
    rename_column :pages, :square_pic, :icone3_pic
    rename_column :pages, :title2, :icone4_pic
    rename_column :pages, :benefit1, :icone1_text
    rename_column :pages, :benefit2, :icone2_text
    rename_column :pages, :benefit3, :icone3_text
    rename_column :pages, :benefit4, :icone4_text
  end
end
