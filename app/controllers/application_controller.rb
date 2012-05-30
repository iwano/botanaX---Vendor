class ApplicationController < ActionController::Base
  protect_from_forgery

  def check_finished_route(id)
      routes = Route.find(id).route_details
      x=true
      routes.each do |route|
        x=false unless route.order.status == 'delivered'
      end
      Route.find(id).update_attribute(:finished, true) unless x==false
    end
end
