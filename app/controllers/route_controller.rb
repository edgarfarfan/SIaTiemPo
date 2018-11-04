class RouteController < ApplicationController

    before_action :set_accion, only: [:show, :edit, :update, :destroy]
    
    def index 
        @Routes = Route.all
    end
    def show
      respond_with @route
    end
    
    def new
        respond_with @route = Routes.new
     end
    
    def edit
        respond_with @route
     end
     def create
         respond_with @route = Route.create(route_params)
     end
     def add_station
        station = Station.find(params[:station_id])
        route = Route.find(params[:route_id])
        route.stations << station
        route.save
        respond_with route
     end
     def update
        @route.update(route_params)
        respond_with @route
     end
     def destroy
        # Destroy returns the object (i.e. self); though I believe Mongoid returns a boolean - need to double check this
         @route.destroy
         respond_with @route.destroy
     end 
    
     def consult 
        station = Station.find(params[:id])
        respond_with station.routes
     end
  
  private
  
  def set_accion
     @route = Route.find(params[:id])
  end
  def route_params
        params.permit(:description, :cyclic, :time_route, :district)
  end
end
