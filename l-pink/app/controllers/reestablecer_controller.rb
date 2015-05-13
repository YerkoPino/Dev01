class ReestablecerController < ApplicationController
  def restablecer
    @users = User.all
    @email = params[:email]

    @users.each do |user| 
      if (user.email == @email)
      	user.password = "L2P0I1N5K"
      	user.save
        UserMailer.contrasena(user).deliver
        respond_to do |format|
          format.html {redirect_to root_url, notice: 'Se ha enviado un mail con su nueva contraseña.' }
        end
      end
    end
    
  end 
end
