class UsuarioProyectosController < ApplicationController
  before_action :set_usuario_proyecto, only: [:show, :edit, :update, :destroy]

  # GET /usuario_proyectos
  # GET /usuario_proyectos.json
  def index
    @usuario_proyectos = UsuarioProyecto.all
  end

  # GET /usuario_proyectos/1
  # GET /usuario_proyectos/1.json
  def show
  end

  # GET /usuario_proyectos/new
  def new
    @usuario_proyecto = UsuarioProyecto.new
    @proyecto = Proyecto.find(params[:id])
    @usuarios = UsuarioProyecto.all.where("proyecto_id=?",@proyecto.id)
    @user = User.all
  end

  # GET /usuario_proyectos/1/edit
  def edit
  end

  # POST /usuario_proyectos
  # POST /usuario_proyectos.json
  def create
    @usuario_proyecto = UsuarioProyecto.new(usuario_proyecto_params)
    respond_to do |format|
      if @usuario_proyecto.valid?
        if @usuario_proyecto.save
          @usuario_ultimo = UsuarioProyecto.last
          @user = User.all
          @user_destinatario = current_user
          @proyectos = Proyecto.all

          @proyectos.each do |proyect| 
            if (proyect.id == @usuario_ultimo.proyecto_id)
              @proyecto = proyect
            end
          end

          @user.each do |user| 
            if (user.id == @usuario_ultimo.user_id)
              UserMailer.proyecto_asignado(user,@proyecto,@user_destinatario).deliver
            end
          end
          format.html { redirect_to new_usuario_proyecto_path(id: @usuario_proyecto.proyecto_id), notice: 'Usuario asociado al proyecto correctamente' }
          #format.json { render :show, status: :created, location: @usuario_proyecto }
        else
          format.html { render :new }
          format.json { render json: @usuario_proyecto.errors, status: :unprocessable_entity }
        end
      else
        format.html { redirect_to new_usuario_proyecto_path(id: @usuario_proyecto.proyecto_id), alert: 'Usuario agregado no válido' }
        format.json { render json: @usuario_proyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_proyectos/1
  # PATCH/PUT /usuario_proyectos/1.json
  def update
    respond_to do |format|
      if @usuario_proyecto.update(usuario_proyecto_params)
        format.html { redirect_to @usuario_proyecto, notice: 'Usuario asociado al proyecto correctamente' }
        format.json { render :show, status: :ok, location: @usuario_proyecto }
      else
        format.html { render :edit }
        format.json { render json: @usuario_proyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_proyectos/1
  # DELETE /usuario_proyectos/1.json
  def destroy
    @usuario_proyecto.destroy
    respond_to do |format|
      format.html { redirect_to usuario_proyectos_url, notice: 'Usuario eliminado del proyecto correctamente' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_proyecto
      @usuario_proyecto = UsuarioProyecto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_proyecto_params
      params.require(:usuario_proyecto).permit(:proyecto_id, :user_id)
    end
end
