class UsuarioActaReunionsController < ApplicationController
  before_action :set_usuario_acta_reunion, only: [:show, :edit, :update, :destroy]

  # GET /usuario_acta_reunions
  # GET /usuario_acta_reunions.json
  def index
    @usuario_acta_reunions = UsuarioActaReunion.all
  end

  # GET /usuario_acta_reunions/1
  # GET /usuario_acta_reunions/1.json
  def show
  end

  # GET /usuario_acta_reunions/new
  def new
    @usuario_acta_reunion = UsuarioActaReunion.new
  end

  # GET /usuario_acta_reunions/1/edit
  def edit
  end

  # POST /usuario_acta_reunions
  # POST /usuario_acta_reunions.json
  def create
    @usuario_acta_reunion = UsuarioActaReunion.new(usuario_acta_reunion_params)

    respond_to do |format|
      if @usuario_acta_reunion.save
        format.html { redirect_to @usuario_acta_reunion, notice: 'Usuario acta reunion was successfully created.' }
        format.json { render :show, status: :created, location: @usuario_acta_reunion }
      else
        format.html { render :new }
        format.json { render json: @usuario_acta_reunion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_acta_reunions/1
  # PATCH/PUT /usuario_acta_reunions/1.json
  def update
    respond_to do |format|
      if @usuario_acta_reunion.update(usuario_acta_reunion_params)
        format.html { redirect_to @usuario_acta_reunion, notice: 'Usuario acta reunion was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario_acta_reunion }
      else
        format.html { render :edit }
        format.json { render json: @usuario_acta_reunion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_acta_reunions/1
  # DELETE /usuario_acta_reunions/1.json
  def destroy
    @usuario_acta_reunion.destroy
    respond_to do |format|
      format.html { redirect_to usuario_acta_reunions_url, notice: 'Usuario acta reunion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_acta_reunion
      @usuario_acta_reunion = UsuarioActaReunion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_acta_reunion_params
      params.require(:usuario_acta_reunion).permit(:acta_reunion_id, :user_id, :secretario)
    end
end
