class ActaReunionsController < ApplicationController
  before_action :set_acta_reunion, only: [:show, :edit, :update, :destroy]

  # GET /acta_reunions
  # GET /acta_reunions.json
  def index
    @acta_reunions = ActaReunion.all
  end

  # GET /acta_reunions/1
  # GET /acta_reunions/1.json
  def show
  end

  # GET /acta_reunions/new
  def new
    @acta_reunion = ActaReunion.new
  end

  # GET /acta_reunions/1/edit
  def edit
  end

  # POST /acta_reunions
  # POST /acta_reunions.json
  def create
    @acta_reunion = ActaReunion.new(acta_reunion_params)

    respond_to do |format|
      if @acta_reunion.save
        format.html { redirect_to @acta_reunion, notice: 'Acta reunion was successfully created.' }
        format.json { render :show, status: :created, location: @acta_reunion }
      else
        format.html { render :new }
        format.json { render json: @acta_reunion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acta_reunions/1
  # PATCH/PUT /acta_reunions/1.json
  def update
    respond_to do |format|
      if @acta_reunion.update(acta_reunion_params)
        format.html { redirect_to @acta_reunion, notice: 'Acta reunion was successfully updated.' }
        format.json { render :show, status: :ok, location: @acta_reunion }
      else
        format.html { render :edit }
        format.json { render json: @acta_reunion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acta_reunions/1
  # DELETE /acta_reunions/1.json
  def destroy
    @acta_reunion.destroy
    respond_to do |format|
      format.html { redirect_to acta_reunions_url, notice: 'Acta reunion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acta_reunion
      @acta_reunion = ActaReunion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acta_reunion_params
      params.require(:acta_reunion).permit(:fecha, :correlativo, :proyecto_id)
    end
end
