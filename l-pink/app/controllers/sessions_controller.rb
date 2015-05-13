class SessionsController < ApplicationController
  def new
  end

  def create  
    user = User.authenticate(params[:email], params[:password])  
    if user  
      session[:user_id] = user.id  
      redirect_to proyectos_path, :notice => "Sesión iniciada exitosamente"  
    else  
      flash.now.alert = "Mail o Contraseña inválida"  
      render "new"  
    end  
  end 

	def destroy  
      session[:user_id] = nil  
      redirect_to root_url, :notice => "Sesión cerrada con éxito"  
	end  
end
