class LogsController < ApplicationController
  def index
    @vehicles = Vehicle.all
    @new_vehicle = Vehicle.new
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end
end
