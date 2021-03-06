class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  has_many :journals, dependent: :destroy
  has_many :products, dependent: :destroy
  has_many :stockists, dependent: :destroy
  has_many :faqs, dependent: :destroy
  has_one :page, dependent: :destroy
  has_one :philosophy, dependent: :destroy
end
