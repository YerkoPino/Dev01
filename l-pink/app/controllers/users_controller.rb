class UsersController < ApplicationController
  def new
  	@user = User.new
  end


  def create  
    @user = User.new(user_params)  
    if @user.save 
      UserMailer.registro_bienvenida(@user).deliver
      session[:user_id] = @user.id 
      redirect_to root_url, :notice => "Te haz registrado exitosamente!"  
    else  
      render "new"  
    end  
  end

  def user_params
    params.require(:user).permit(:nombre, :apellido, :email, :tipo, :password, :password_confirmation)
  end
end
