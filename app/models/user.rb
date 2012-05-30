class User < ActiveRecord::Base
  has_many :cart_products, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :routes
  belongs_to :state
  belongs_to :city
end