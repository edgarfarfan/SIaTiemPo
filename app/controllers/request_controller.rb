class RequestController < ApplicationController
 #respond_to :html, :xml, :json

    before_action :set_request, only: [:show, :edit, :update, :destroy]
    
    def index 
        @requests = Request.all
    end
    def show
      respond_with @request
    end
    
    def new
        respond_with @request = Request.new
     end
    
    def edit
        respond_with @request
     end
     def create
         respond_with @request = Request.create(request_params)
     end
     def update
        @request.update(request_params)
        respond_with @request
      end
       def destroy
          # Destroy returns the object (i.e. self); though I believe Mongoid returns a boolean - need to double check this
            @request.destroy
            respond_with @request.destroy
  end
  
  private
  
  def set_request
     @request = Request.find(params[:id])
  end
  def request_params
        params.permit(:long_degrees, :long_min, :long_seg, :long_coordinate, :lat_degrees, :lat_min, :lat_seg, :lat_coordinate, :imac, :user_id, :route_id)
  end
end
