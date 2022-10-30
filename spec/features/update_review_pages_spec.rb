require 'rails_helper'

describe "the update a product process" do
  it "updates a product" do
    product1 = Product.create(name: "Portland Port", country_of_origin: "USA", cost: 100.00)
    review1 = Review.create(product_id: product1.id, author: "Bryce", content_body: 'here are plenty of e Versilian Community Sample Library, and the Sonatina Symphonic Orchestra.', rating: 5 )
    visit product_review_path(product1, review1)
    click_on 'Edit Review'
    fill_in 'Author', :with => 'Mason'
    fill_in 'Content body', :with => 'here are plenty of e Versilian Community Sample Library, and the Sonatina Symphonic Orchestra.'
    fill_in 'Rating', :with => '1'
    click_on 'Update Review'
    expect(page).to have_content 'Review has been updated.'
    expect(page).to have_content 'Mason'
  end
end
  