class Page < ApplicationRecord
  belongs_to :user
  has_one_attached :banner_pic
  has_one_attached :icone1_pic
  has_one_attached :icone2_pic
  has_one_attached :icone3_pic
  has_one_attached :icone4_pic
end
