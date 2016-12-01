class Api::V1::SearchController <ApplicationController
	def index
	  @servicios = Servicio.all
	  render json: @servicios
	end
end