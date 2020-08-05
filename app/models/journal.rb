class Journal < ApplicationRecord
  belongs_to :user
  has_one_attached :picture1
  has_one_attached :picture2
  has_one_attached :picture3
  has_one_attached :picture4
end
