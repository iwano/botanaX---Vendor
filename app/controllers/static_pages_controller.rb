class StaticPagesController < ApplicationController
	def home
		@user = User.find(2)
		@routes = @user.routes
		route_details=[]
		@routes.each do |route|
			x = route.route_details
			x.each do |order|
				route_details.push(order) unless order.order.status != 'on its way'
			end
		end
		@route_details = route_details
	end
end