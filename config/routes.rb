Rails.application.routes.draw do
	root 'game#start'

	# get '*path' => 'game#finish'
	get "flight-tickets/:routes" => 'game#finish'

	get "/flight-schedule/banglore-chennai-flights.html" => 'game#sc'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
