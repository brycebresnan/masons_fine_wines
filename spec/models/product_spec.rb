require 'rails_helper'

describe Product do
  it {should have_many(:reviews)}

  it {should validate_presence_of :name  }
  it {should validate_presence_of :country_of_origin }
  it {should validate_presence_of :cost }
  it {should validate_numericality_of(:cost).is_greater_than(0.00)}
  it {should validate_numericality_of(:cost).is_less_than(99999.99)}
end
