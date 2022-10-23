class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
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
