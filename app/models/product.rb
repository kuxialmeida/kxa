class Product < ApplicationRecord
  has_many :category_products
  has_many :categories, through: :category_products
  has_many_attached :photos
  validate :photos_count





  private

  def photos_count

    if photos.attached? && photos.length > 4
      errors.add(:photos, 'You can upload a maximum of 4 photos.')
    end
  end

end
