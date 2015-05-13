class UsersController < ApplicationController

  before_action :set_user, only: [:edit,:show,:update,:edit_avatar,:edit_password]
  before_action :set_pag, only: [:edit,:edit_password,:edit_avatar,:update]

  def new
  	@user = User.new
  end

  def create  
    @user = User.new(user_params)
    @aux_nombre = @user.nombre.split(//)
    @aux_apellido = @user.apellido.split(//)
    @aux_id = Array.new(10)
    @aux_id.push(@aux_nombre[0])
    @aux_id.push(@aux_apellido[0])
    @user_aux = User.find_by_identificador(@aux_id.join(""))
    @contador = 1
    while @user_aux do
      @aux_id.push(@aux_apellido[@contador])
      @contador = @contador + 1
      @user_aux = User.find_by_identificador(@aux_id.join(""))
    end
    @user.identificador = @aux_id.join("")
    if @user.save 
      UserMailer.registro_bienvenida(@user).deliver
      session[:user_id] = @user.id 
      redirect_to proyectos_path, :notice => "¡Te haz registrado exitosamente!"  
    else  
      render "new"  
    end  
  end

  def edit
    @edit = :true
  end

  def edit_avatar
    @edit = :true
  end

  def edit_password
    @edit = :false
  end

  def show    
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Datos guardados exitosamente' }
        format.json { render :show, status: :ok, location: @user }
      else
        if @edit
          format.html { render :edit }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        else
          format.html { render :edit_password }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  def user_params
    params.require(:user).permit(:nombre, :apellido, :email, :tipo, :password, :password_confirmation,:avatar_url,:identificador)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def set_pag
    @edit
  end
end
