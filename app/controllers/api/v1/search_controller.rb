class Api::V1::SearchController <ApplicationController
	def index
	  render json: {
	  	:id => 1,
	  	:titulo => "Plomero",
	  	:latitud => "99.0000",
	  	:longitud => "-14.000",
	  	:calificacion => 3.5
	  }	
	end
end