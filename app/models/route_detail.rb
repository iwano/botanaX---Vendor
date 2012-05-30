class RouteDetail < ActiveRecord::Base
  attr_accessible :order_id, :user_id, :route_id

  belongs_to :route
  belongs_to :order
end