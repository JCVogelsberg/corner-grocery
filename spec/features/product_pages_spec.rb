require "spec_helper"

describe "product pages" do
  describe "deleting" do
    it "should let you delete a product" do
      product = Product.create(:name => "bear shampoo", :price => 12.95, :description => "Not for use on pandas")
      visit "/products/#{product.id}"
      click_link 'Delete'
      page.should_not have_content "bear shampoo"
    end
  end

  it "creates a new product" do
    visit "/products/new"
    fill_in 'Name', :with => "Dog Cologne"
    fill_in 'Price', :with => 3.97
    fill_in 'Description', :with => "Available in Drakkar, CK1, and New-Car scents"
    click_button "Create Product"
    page.should have_content "Product Saved!"
  end


  # describe "creating" do
  #   it "should let you create a new product" do
  #     fill_in 'name', :with => "Dog Cologne"
  #     fill_in 'price', :with => 3.97
  #     fill_in 'description', :with => "Available in Drakkar, CK1, and New-Car scents"
  #     visit new_product_path
  #     # save_and_open_page
  #     click_button "Create Product"
  #   end
  # end
end








