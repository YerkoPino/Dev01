class UsuarioTareasController < ApplicationController
  before_action :set_usuario_tarea, only: [:show, :edit, :update, :destroy]

  # GET /usuario_tareas
  # GET /usuario_tareas.json
  def index
    @usuario_tareas = UsuarioTarea.all
  end

  # GET /usuario_tareas/1
  # GET /usuario_tareas/1.json
  def show
  end

  # GET /usuario_tareas/new
  def new
    @usuario_tarea = UsuarioTarea.new
  end

  # GET /usuario_tareas/1/edit
  def edit
  end

  # POST /usuario_tareas
  # POST /usuario_tareas.json
  def create
    @usuario_tarea = UsuarioTarea.new(usuario_tarea_params)

    respond_to do |format|
      if @usuario_tarea.save
        format.html { redirect_to @usuario_tarea, notice: 'Usuario tarea was successfully created.' }
        format.json { render :show, status: :created, location: @usuario_tarea }
      else
        format.html { render :new }
        format.json { render json: @usuario_tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_tareas/1
  # PATCH/PUT /usuario_tareas/1.json
  def update
    respond_to do |format|
      if @usuario_tarea.update(usuario_tarea_params)
        format.html { redirect_to @usuario_tarea, notice: 'Usuario tarea was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario_tarea }
      else
        format.html { render :edit }
        format.json { render json: @usuario_tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_tareas/1
  # DELETE /usuario_tareas/1.json
  def destroy
    @usuario_tarea.destroy
    respond_to do |format|
      format.html { redirect_to usuario_tareas_url, notice: 'Usuario tarea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_tarea
      @usuario_tarea = UsuarioTarea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_tarea_params
      params.require(:usuario_tarea).permit(:responsable, :tarea_id, :user_id)
    end
end
