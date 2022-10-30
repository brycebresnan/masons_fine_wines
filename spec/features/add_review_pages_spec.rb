require 'rails_helper'

describe "the add a review process" do
  it "adds a new review" do
    product1 = Product.create(name: "Portland Port", country_of_origin: "USA", cost: 100.00)
    visit product_path(product1)
    click_on "Add Review"
    fill_in 'Author', :with => 'Bryce'
    fill_in 'Content body', :with => 'here are plenty of e Versilian Community Sample Library, and the Sonatina Symphonic Orchestra.'
    fill_in 'Rating', :with => '1'
    click_on "Create Review"
    expect(page).to have_content "Review has been created successfully!"
    expect(page).to have_content "Bryce"
  end

  it "gives an error when no author is entered" do
    product1 = Product.create(name: "Portland Port", country_of_origin: "USA", cost: 100.00)
    visit new_product_review_path(product1)
    click_on 'Create Review'
    expect(page).to have_content "Author can't be blank"
  end
end