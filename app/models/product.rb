class Product < ApplicationRecord
  belongs_to :category, dependent: :destroy
  has_attached_file :image,
            styles: {thumbnail: "60x60", large: "300x300"}
  validates_attachment :image, presence: true, content_type: {content_type: ["image/png", "image/jpeg"]},  size: {in: 1..5000.kilobytes}
end
