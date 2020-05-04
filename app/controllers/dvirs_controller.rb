class DvirsController < ApplicationController
  before_action :set_dvir, only: [:show, :edit, :update, :destroy]

  # GET /dvirs
  # GET /dvirs.json
  def index
    @dvirs = Dvir.all
  end

  # GET /dvirs/1
  # GET /dvirs/1.json
  def show
  end

  # GET /dvirs/new
  def new
    @dvir = Dvir.new
    @vehicle = Vehicle.where(:number => params[:vid])[0] || Vehicle.first
    @company = Company.first
    
  end

  # GET /dvirs/1/edit
  def edit
  end

  # POST /dvirs
  # POST /dvirs.json
  def create
    @dvir = Dvir.new(dvir_params)
    
    if @dvir.save
       redirect_to dvir_steps_path
       session[:dvir] = @dvir.id
      else
      render :new
    end
  end

  # PATCH/PUT /dvirs/1
  # PATCH/PUT /dvirs/1.json
  def update
    respond_to do |format|
      if @dvir.update(dvir_params)
        format.html { redirect_to @dvir, notice: 'Dvir was successfully updated.' }
        format.json { render :show, status: :ok, location: @dvir }
      else
        format.html { render :edit }
        format.json { render json: @dvir.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dvirs/1
  # DELETE /dvirs/1.json
  def destroy
    @dvir.destroy
    respond_to do |format|
      format.html { redirect_to dvirs_url, notice: 'Dvir was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dvir
      @dvir = Dvir.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dvir_params
      params.require(:dvir).permit(:company_id, :vehicle_id, :odometer, :end_mileage, :start_mileage, :location,:driver, images: [])
    end
end
