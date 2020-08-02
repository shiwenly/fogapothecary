class ChangeDefaultPic < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:products, :picture1, "image/upload/v1596359762/default_annonce_p5mk7k.png")
  end
end
