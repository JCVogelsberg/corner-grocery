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

  describe "creating" do
    it "should let you create a new product" do
      product = Product.create(:name => "Dog Cologne", :price => 3.97, :description => "Available in Drakkar, CK1, and New-Car scents")
      visit "/products/new"
      click_link "Create"
      # save_and_open_page
      page.should have_content "Product Saved!"

    end
  end

end






