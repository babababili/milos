require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :asin => "Asin",
      :description => "Description",
      :price => 1.5,
      :ship_price => 1.5,
      :rank => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Asin/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1/)
  end
end
