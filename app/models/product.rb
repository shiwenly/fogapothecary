class Product < ApplicationRecord
  belongs_to :user
  has_one_attached :picture1
end
