class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone, :address, :intro, :image, :phoneNumber])
  end
  
    def after_sign_in_path_for(resource_or_scope)
      if current_admin
        dashboard_index_path
      elsif current_seller
        selerdash_index_path
     
      elsif current_customer
        root_path
      else
        root_path  
      end  
    end    
    
    def after_sign_out_path_for(resource_or_scope)
       root_path
      end 
end
