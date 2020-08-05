class Page < ApplicationRecord
  belongs_to :user
  has_one_attached :banner_pic
  has_one_attached :rounded_pic
  has_one_attached :separation_pic
  has_one_attached :square_pic
end
