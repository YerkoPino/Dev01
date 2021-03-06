class ProyectosController < ApplicationController
  before_action :set_proyecto, only: [:show, :edit, :update, :destroy]

  # GET /proyectos
  # GET /proyectos.json
  def index
    @proyectos = Proyecto.all
    @usuario_proyectos = UsuarioProyecto.all
  end

  # GET /proyectos/1
  # GET /proyectos/1.json
  def show
    @usuarios = UsuarioProyecto.all.where("proyecto_id=?",@proyecto.id)
    @user = User.all
  end

  # GET /proyectos/new
  def new
    @proyecto = Proyecto.new
  end

  # GET /proyectos/1/edit
  def edit
  end

  # POST /proyectos
  # POST /proyectos.json
  def create
    @proyecto = Proyecto.new(proyecto_params)

    respond_to do |format|
      if @proyecto.save
        format.html { redirect_to new_usuario_proyecto_path(id: @proyecto), notice: 'Proyecto creado correctamente.' }
        #format.json { render :show, status: :created, location: @proyecto }
      else
        format.html { render :new }
        format.json { render json: @proyecto.errors, status: :unprocessable_entity }
      end
    end
    @usuario_pro = UsuarioProyecto.new
    @usuario_pro.proyecto_id = @proyecto.id
    @usuario_pro.user_id = current_user.id
    @usuario_pro.save
  end

  # PATCH/PUT /proyectos/1
  # PATCH/PUT /proyectos/1.json
  def update
    respond_to do |format|
      if @proyecto.update(proyecto_params)
        format.html { redirect_to @proyecto, notice: 'Proyecto actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @proyecto }
      else
        format.html { render :edit }
        format.json { render json: @proyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proyectos/1
  # DELETE /proyectos/1.json
  def destroy
    @proyecto.destroy
    respond_to do |format|
      format.html { redirect_to proyectos_url, notice: 'Proyecto eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proyecto
      @proyecto = Proyecto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proyecto_params
      params.require(:proyecto).permit(:nombre, :descripcion, :fecha_inicio, :fecha_fin)
    end
end
