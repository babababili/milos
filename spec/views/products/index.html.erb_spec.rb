require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :asin => "Asin",
        :description => "Description",
        :price => 1.5,
        :ship_price => 1.5,
        :rank => 1
      ),
      Product.create!(
        :asin => "Asin",
        :description => "Description",
        :price => 1.5,
        :ship_price => 1.5,
        :rank => 1
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Asin".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
