class BusController < ApplicationController

  respond_to :html, :xml, :json

  before_action :set_bus, only: [:show, :edit, :update, :destroy]
  
    def index 
        @buses = Bus.all
    end
    def show
      respond_with @bus
    end
    
    def new
        respond_with @bus = Bus.new
     end
    
    def edit
        respond_with @bus
     end
     def create
         respond_with @bus = Bus.create(bus_params)
     end
     def update
        @bus.update(bus_params)
        respond_with @bus
      end
       def destroy
          # Destroy returns the object (i.e. self); though I believe Mongoid returns a boolean - need to double check this
            @bus.destroy
            respond_with @bus.destroy
  end
  
  private
  
  def set_bus
     @bus = Bus.find(params[:id])
  end
  def bus_params
        params[:bus].params.permit(:registration_tag, :capacity, :disability, :create_date, :dog_service )
  end
end
