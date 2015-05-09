class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception

  	protect_from_forgery with: :null_session
    helper_method :resource, :resource_name,:current_user #, :devise_mapping

  def after_sign_in_path_for(resource)
  	request.env['omniauth.origin'] || stored_location_for(resource) || root_path 
  end

  #before_action :configure_devise_permitted_parameters, if: :devise_controller?  
  #before_filter :authenticate_user!
  protected
  def configure_devise_permitted_parameters
  	registration_params = [:nombre, :apellido, :email, :tipo, :password, :password_confirmation]
   	if params[:action] == 'update'
   		devise_parameter_sanitizer.for(:account_update) { 
   			|u| u.permit(registration_params << :current_password)
   		}
   	elsif params[:action] == 'create'
   		devise_parameter_sanitizer.for(:sign_up) { 
   			|u| u.permit(registration_params) 
   		}
   	end
   end

   def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  private  
  def current_user  
    @current_user ||= User.find(session[:user_id]) if session[:user_id]  
  end  
end
