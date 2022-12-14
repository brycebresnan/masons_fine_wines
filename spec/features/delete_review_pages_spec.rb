require 'rails_helper'

describe "the delete a review process" do

  before do
    User.destroy_all
    admin = User.create!(email:"admin@admin.com" , user_name:"AdminAdmin", password:"1234" , admin: "true")
    visit signin_path
    fill_in "Email", :with => 'admin@admin.com'
    fill_in "Password", :with => '1234'
    click_button "Sign in"
  end
  
  it "deletes a review" do
    product1 = Product.create(name: "Portland Port", country_of_origin: "USA", cost: 100.00)
    review1 = Review.create(product_id: product1.id, author: "Bryce", content_body: 'here are plenty of e Versilian Community Sample Library, and the Sonatina Symphonic Orchestra.', rating: 5 )
    visit product_review_path(product1, review1)
    click_on 'Delete Review'
    expect(page).to have_content "Review has been deleted."
    expect(page).not_to have_content 'Bryce'
  end
end