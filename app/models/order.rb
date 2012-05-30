class Order < ActiveRecord::Base
  attr_accessible :status, :delivered_date

  belongs_to :user
  has_many :order_details
  has_many :route_details
end