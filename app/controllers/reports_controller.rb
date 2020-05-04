class ReportsController < ApplicationController
  before_action :set_report, only: [:show, :edit, :update, :destroy]

  # GET /reports
  # GET /reports.json
  def index
    @reports = Report.all
  end

  # GET /reports/1
  # GET /reports/1.json
  def show
  end

  # GET /reports/new
  def new
    @report = Report.new
    @vehicle = Vehicle.where(:number => params[:vid])[0]
  end

  # GET /reports/1/edit
  def edit
  end

  # POST /reports
  # POST /reports.json
  def create
    @report = Report.new(report_params)
    #@report.company = Company.first.name

    
    if @report.save
      redirect_to dvir_steps_url
      session[:report] = @report.id
    else
      render :new
    end
  
  end

  # PATCH/PUT /reports/1
  # PATCH/PUT /reports/1.json
  def update
    respond_to do |format|
      if @report.update(report_params)
        format.html { redirect_to @report, notice: 'Report was successfully updated.' }
        format.json { render :show, status: :ok, location: @report }
      else
        format.html { render :edit }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1
  # DELETE /reports/1.json
  def destroy
    @report.destroy
    respond_to do |format|
      format.html { redirect_to reports_url, notice: 'Report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report = Report.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def report_params
      params.require(:report).permit(:driver, :vehicle, :odometer, :signature, :notes, :satisfactory,:leaks, :wires, :belts, :oil, :coolant, :battery, :transmission, :noise, :guages, :switches, :horn, :defrosters, :wipers, :stop_arm, :mirrors, :brakes, :service_door, :emergency_equipment, :first_aid, :stairs, :interior, :floor, :emergency_door, :lights, :front_right_wheel, :windshield, :front_left_tire, :exhaust, :left_side, :left_rear_tire, :rear, :tail_pipe, :right_rear_tire, :right_side, :drivers_seat, :directionals, :parking_brake, :clutch, :steering, :wheelchair_lift, :condition, images: [])
    end
end
