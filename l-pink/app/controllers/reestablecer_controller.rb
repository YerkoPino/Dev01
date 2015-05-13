class ReestablecerController < ApplicationController
  def restablecer
    @users = User.all
    @email = params[:email]

    @users.each do |user| 
      if (user.email == @email)
      	user.password = "L2P0I1N5K"
      	user.save
        UserMailer.contrasena(user).deliver
      end
    end
    
  end 
end
