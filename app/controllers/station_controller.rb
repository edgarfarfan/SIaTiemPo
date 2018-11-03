class StationController < ApplicationController

respond_to :html, :xml, :json

  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    respond_with @stations = Station.all
  end

  def show
    respond_with @station
  end

  def new
    respond_with @station = Station.new
  end

  def edit
    respond_with @station
  end

  def create
    respond_with @station = Station.create(station_params)
  end

  def update
    @station.update(station_params)

    respond_with @station
  end

  def destroy
    # Destroy returns the object (i.e. self); though I believe Mongoid returns a boolean - need to double check this
    @station.destroy
    
    respond_with @station.destroy
  end

  private

  def set_station
    @station = Station.find(params[:id])
  end

  def station_params
    params[:station].permit(:description, :adress, :long_degrees, :long_min, :long_seg, :long_coordinate, :lat_degrees, :lat_min, :lat_seg, :lat_coordinate)
  end
end
