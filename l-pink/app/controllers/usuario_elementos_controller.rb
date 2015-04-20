class UsuarioElementosController < ApplicationController
  before_action :set_usuario_elemento, only: [:show, :edit, :update, :destroy]

  # GET /usuario_elementos
  # GET /usuario_elementos.json
  def index
    @usuario_elementos = UsuarioElemento.all
  end

  # GET /usuario_elementos/1
  # GET /usuario_elementos/1.json
  def show
  end

  # GET /usuario_elementos/new
  def new
    @usuario_elemento = UsuarioElemento.new
  end

  # GET /usuario_elementos/1/edit
  def edit
  end

  # POST /usuario_elementos
  # POST /usuario_elementos.json
  def create
    @usuario_elemento = UsuarioElemento.new(usuario_elemento_params)

    respond_to do |format|
      if @usuario_elemento.save
        format.html { redirect_to @usuario_elemento, notice: 'Usuario elemento was successfully created.' }
        format.json { render :show, status: :created, location: @usuario_elemento }
      else
        format.html { render :new }
        format.json { render json: @usuario_elemento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_elementos/1
  # PATCH/PUT /usuario_elementos/1.json
  def update
    respond_to do |format|
      if @usuario_elemento.update(usuario_elemento_params)
        format.html { redirect_to @usuario_elemento, notice: 'Usuario elemento was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario_elemento }
      else
        format.html { render :edit }
        format.json { render json: @usuario_elemento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_elementos/1
  # DELETE /usuario_elementos/1.json
  def destroy
    @usuario_elemento.destroy
    respond_to do |format|
      format.html { redirect_to usuario_elementos_url, notice: 'Usuario elemento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_elemento
      @usuario_elemento = UsuarioElemento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_elemento_params
      params.require(:usuario_elemento).permit(:responsable, :elemento_id, :user_id)
    end
end
