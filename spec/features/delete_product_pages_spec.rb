require 'rails_helper'

describe "the delete a product process" do

  before do
    User.destroy_all
    admin = User.create!(email:"admin@admin.com" , user_name:"AdminAdmin", password:"1234" , admin: "true")
    visit signin_path
    fill_in "Email", :with => 'admin@admin.com'
    fill_in "Password", :with => '1234'
    click_button "Sign in"
  end
  
  it "deletes a product" do
    product1 = Product.create(name: "Portland Port", country_of_origin: "USA", cost: 100.00)
    visit product_path(product1)
    click_on 'Delete Wine'
    expect(page).to have_content 'Wine has been deleted.'
    expect(page).not_to have_content 'Portland Port'
  end
end