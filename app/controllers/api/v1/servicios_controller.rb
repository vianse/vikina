class Api::V1::ServiciosController <ApplicationController
 skip_before_filter :verify_authenticity_token

 def create
 
 servicios_params.map do |a|
       @crear_servico = Servicio.create({
	        :titulo   => a[:titulo], 
	        :descripcion    => a[:descripcion], 
	        :imagen => a[:imagen], 
	        :lon   => a[:lon], 
	        :lat => a[:lat], 
	        :direccion => a[:direccion],
	        :cp     => a[:cp],
	        :telefono    => a[:telefono],
	        :correo  => a[:correo], 
	        :whatsapp   => a[:whatsapp],
	        :calificacion      => a[:calificacion],
	        :user_id     => a[:user_id]
        })
end
 		render json: {
           message: "Datos guardados satisfactoriamente."
         }
       
end

 private
  def servicios_params
   params.require(:servicios).map do |p|
   ActionController::Parameters.new(p.to_hash).permit(:titulo, :descripcion,:imagen,:lon,:lat,:direccion,:cp,:telefono,:correo, :whatsapp, :user_id, :calificacion)
   end
  end
end