class ChangePicDefaultPicture < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:products, :picture1, "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.pngimage/upload/v1596465097/default_annonce_wxhhsp.png")
  end
end
