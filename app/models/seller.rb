class Seller < ActiveRecord::Base
  belongs_to :product
  validates_formatting_of :home_url, using: :url
end
