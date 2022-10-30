require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_button "Add Wine to List"
    fill_in 'Name', :with => 'Portland Port'
    fill_in 'Country of origin', :with => 'USA'
    fill_in 'Cost (USD) $', :with => '100.00'
    click_on "Create Product"
    expect(page).to have_content "Wine has been added to the List."
    expect(page).to have_content 'Portland Port'
  end

  it "gives an error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content "Name can't be blank"
  end
end