require 'rails_helper'

describe Product do
  it {should have_many(:reviews)}

  it {should validate_presence_of :name  }
  it {should validate_presence_of :country_of_origin }
  it {should validate_presence_of :cost }
  it {should validate_numericality_of(:cost).is_greater_than(0.00)}
  it {should validate_numericality_of(:cost).is_less_than(99999.99)}

  it("titleizes the name of a product") do
    product = Product.create({name: "mason's reserve", country_of_origin: "USA", cost: 100.00})
    expect(product.name()).to(eq("Mason's Reserve"))
  end

end
