require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :asin => "MyString",
      :description => "MyString",
      :price => 1.5,
      :ship_price => 1.5,
      :rank => 1
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_asin[name=?]", "product[asin]"

      assert_select "input#product_description[name=?]", "product[description]"

      assert_select "input#product_price[name=?]", "product[price]"

      assert_select "input#product_ship_price[name=?]", "product[ship_price]"

      assert_select "input#product_rank[name=?]", "product[rank]"
    end
  end
end
