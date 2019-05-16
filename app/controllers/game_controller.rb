class GameController < ApplicationController

	def start
	end

	def finish

		puts "yes"
		uri = params[:routes]
		puts uri
		city1 = uri[/(\w+(-\w+)*)*-(\w+(-\w+)*)*-cheap-airtickets/,1]
		city2 = uri[/(\w+(-\w+)*)*-(\w+(-\w+)*)*-cheap-airtickets/,3]
		redirect_to "/flight-schedule/#{city1}-#{city2}-flights.html"
	end


	def sc
		puts "sc"
	end
end
