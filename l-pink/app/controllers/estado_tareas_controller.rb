class EstadoTareasController < ApplicationController
  before_action :set_estado_tarea, only: [:show, :edit, :update, :destroy]

  # GET /estado_tareas
  # GET /estado_tareas.json
  def index
    @estado_tareas = EstadoTarea.all
  end

  # GET /estado_tareas/1
  # GET /estado_tareas/1.json
  def show
  end

  # GET /estado_tareas/new
  def new
    @estado_tarea = EstadoTarea.new
  end

  # GET /estado_tareas/1/edit
  def edit
  end

  # POST /estado_tareas
  # POST /estado_tareas.json
  def create
    @estado_tarea = EstadoTarea.new(estado_tarea_params)

    respond_to do |format|
      if @estado_tarea.save
        format.html { redirect_to @estado_tarea, notice: 'Estado tarea was successfully created.' }
        format.json { render :show, status: :created, location: @estado_tarea }
      else
        format.html { render :new }
        format.json { render json: @estado_tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estado_tareas/1
  # PATCH/PUT /estado_tareas/1.json
  def update
    respond_to do |format|
      if @estado_tarea.update(estado_tarea_params)
        format.html { redirect_to @estado_tarea, notice: 'Estado tarea was successfully updated.' }
        format.json { render :show, status: :ok, location: @estado_tarea }
      else
        format.html { render :edit }
        format.json { render json: @estado_tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estado_tareas/1
  # DELETE /estado_tareas/1.json
  def destroy
    @estado_tarea.destroy
    respond_to do |format|
      format.html { redirect_to estado_tareas_url, notice: 'Estado tarea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estado_tarea
      @estado_tarea = EstadoTarea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estado_tarea_params
      params.require(:estado_tarea).permit(:nombre, :descripcion)
    end
end
