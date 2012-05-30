class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :lot
  belongs_to :presentation
  has_many :cart_product, dependent: :destroy
  has_many :order_details
end