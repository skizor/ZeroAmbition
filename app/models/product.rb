class Product < ApplicationRecord
  belongs_to :category
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  has_attached_file :image,
            styles: {thumbnail: "60x60", large: "300x300"}
  validates_attachment :image, presence: true, content_type: {content_type: ["image/png", "image/jpeg"]},  size: {in: 1..5000.kilobytes}
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true

  private

  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Cуществуют товарные позиции')
      return false
    end
  end
end
