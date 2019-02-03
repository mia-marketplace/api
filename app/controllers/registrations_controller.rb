class RegistrationsController < Devise::RegistrationsController
	
	respond_to :json

	def create
		if params["creative"] != nil
			configure_creative_parameters
		elsif params["festival"] != nil
			configure_festival_parameters
		end

		build_resource(sign_up_params)
    	resource.save
    	render_resource(resource)
 	end

 	private

 	def configure_creative_parameters(resource_name)
 		devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username])
  	end

  	def configure_festival_parameters
  		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  	end

end