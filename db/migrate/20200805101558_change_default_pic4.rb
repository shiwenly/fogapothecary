class ChangeDefaultPic4 < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:products, :picture1, "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png")
    change_column_default(:journals, :picture1, "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png")
    change_column_default(:journals, :picture2, "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png")
    change_column_default(:journals, :picture3, "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png")
    change_column_default(:journals, :picture4, "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png")
    change_column_default(:pages, :banner_pic, "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png")
    change_column_default(:pages, :rounded_pic, "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png")
    change_column_default(:pages, :square_pic, "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png")
    change_column_default(:pages, :separation_pic, "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png")
  end
end
