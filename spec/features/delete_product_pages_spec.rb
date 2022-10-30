require 'rails_helper'

describe "the delete a product process" do
  it "deletes a product" do
    product1 = Product.create(name: "Portland Port", country_of_origin: "USA", cost: 100.00)
    visit product_path(product1)
    click_on 'Delete Wine'
    expect(page).to have_content 'Wine has been deleted.'
    expect(page).not_to have_content 'Portland Port'
  end
end