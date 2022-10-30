require 'rails_helper'

describe "the update a product process" do
  it "updates a product" do
    product1 = Product.create(name: "Portland Port", country_of_origin: "USA", cost: 100.00)
    visit product_path(product1)
    click_on 'Edit Wine'
    fill_in 'Name', :with => 'Portland Rose'
    fill_in 'Country of origin', :with => 'USA'
    fill_in 'Cost', :with => '200.00'
    click_on 'Update Product'
    expect(page).to have_content 'Wine has been updated.'
    expect(page).to have_content 'Portland Rose'
  end
end
  