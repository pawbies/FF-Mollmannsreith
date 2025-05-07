class Vehicle < ApplicationRecord
  has_one_attached :image

  validates :name, presence: true, length: { maximum: 50 }
end
