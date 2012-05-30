class RouteDetailsController < ApplicationController
  def deliver
    @order = Order.find(params[:order_id])
    @order.update_attributes(:status => "delivered", :delivered_date => Time.now)
    ordr = @order.route_details
    id = ordr[0].route.id
    check_finished_route(id)
    redirect_to "/"
  end
end