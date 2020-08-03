class ChangePicDefaultPicture2 < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:products, :picture1, "image/upload/v1596465097/default_annonce_wxhhsp.png")
  end
end
