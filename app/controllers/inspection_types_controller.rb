class InspectionTypesController < ApplicationController
  before_action :set_inspection_type, only: [:show, :edit, :update, :destroy]

  # GET /inspection_types
  # GET /inspection_types.json
  def index
    @inspection_types = InspectionType.all
  end

  # GET /inspection_types/1
  # GET /inspection_types/1.json
  def show
  end

  # GET /inspection_types/new
  def new
    @inspection_type = InspectionType.new
  end

  # GET /inspection_types/1/edit
  def edit
  end

  # POST /inspection_types
  # POST /inspection_types.json
  def create
    @inspection_type = InspectionType.new(inspection_type_params)

    respond_to do |format|
      if @inspection_type.save
        format.html { redirect_to @inspection_type, notice: 'Inspection type was successfully created.' }
        format.json { render :show, status: :created, location: @inspection_type }
      else
        format.html { render :new }
        format.json { render json: @inspection_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inspection_types/1
  # PATCH/PUT /inspection_types/1.json
  def update
    respond_to do |format|
      if @inspection_type.update(inspection_type_params)
        format.html { redirect_to @inspection_type, notice: 'Inspection type was successfully updated.' }
        format.json { render :show, status: :ok, location: @inspection_type }
      else
        format.html { render :edit }
        format.json { render json: @inspection_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inspection_types/1
  # DELETE /inspection_types/1.json
  def destroy
    @inspection_type.destroy
    respond_to do |format|
      format.html { redirect_to inspection_types_url, notice: 'Inspection type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inspection_type
      @inspection_type = InspectionType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inspection_type_params
      params.require(:inspection_type).permit(:description)
    end
end
