class ServicedayController < ApplicationController
# respond_to :html, :xml, :json

    before_action :set_accion, only: [:show, :edit, :update, :destroy]
    
    def index 
        @servicedays = Serviceday.all
    end
    def show
      respond_with @serviceday
    end
    
    def new
        respond_with @serviceday = Serviceday.new
     end
    
    def edit
        respond_with @serviceday
     end
     def create
         respond_with @serviceday = Serviceday.create(serviceday_params)
     end
     def update
        @serviceday.update(serviceday_params)
        respond_with @serviceday
      end
       def destroy
          # Destroy returns the object (i.e. self); though I believe Mongoid returns a boolean - need to double check this
            @serviceday.destroy
            respond_with @serviceday.destroy
  end
  
  private
  
  def set_serviceday
     @serviceday = Serviceday.find(params[:id])
  end
  def serviceday_params
        params.permit(:description)
  end
end
