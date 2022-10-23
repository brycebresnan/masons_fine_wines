class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy

  scope :most_reviews, -> {(
    select("products.id, products.name, products.country_of_origin, products.cost, count(reviews.id) as products_count")
    .joins(:reviews)
    .group("products.id")
    .order("products_count DESC")
    .limit(1)
  )}

  validates :name, presence: true
  validates :country_of_origin, presence: true
  validates :cost, presence: true
  validates :cost, numericality: { greater_than: 0.00, less_than: 99999.99  }

  before_save(:titleize_product)

  private
    def titleize_product
      self.name = self.name.titleize
    end

  
end
