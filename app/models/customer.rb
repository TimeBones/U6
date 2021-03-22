class Customer < ApplicationRecord
  validates :name, :phone, presence: true
  has_one_attached :image
end
