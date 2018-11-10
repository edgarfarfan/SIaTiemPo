class OnlinerouteController < ApplicationController
# respond_to :html, :xml, :json

    before_action :set_accion, only: [:show, :edit, :update, :destroy]
    
    def index 
        @Onlineroutes = Onlineroute.all
    end
    def show
      respond_with @onlineroute
    end
    
    def new
        respond_with @onlineroute = Onlineroute.new
     end
    
    def edit
        respond_with @onlineroute
     end
     def create
         respond_with @onlineroute = Onlineroute.create(onlineroute_params)
     end
     def update
        @onlineroute.update(onlineroute_params)
        respond_with @onlineroute
      end
       def destroy
          # Destroy returns the object (i.e. self); though I believe Mongoid returns a boolean - need to double check this
            @onlineroute.destroy
            respond_with @onlineroute.destroy
  end
  
  private
  
  def set_onlineroute
     @onlineroute = Onlineroute.find(params[:id])
  end
  def onlineroute_params
        params.permit(:long_degrees, :long_min, :long_seg, :long_coordinate, :lat_degrees, :lat_min, :lat_seg, :lat_coordinate)
  end
end
