class DashboardController < ApplicationController
  def index
  	@edvir = Dvir.new
  	@vehicle = params[:vid] || 9999
  end
end
