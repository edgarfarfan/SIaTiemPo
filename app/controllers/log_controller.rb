class LogController < ApplicationController
    respond_to :html, :xml, :json
    before_action :set_log, only: [:show, :edit, :update, :destroy]
    
    def index 
        @logs = Log.all
    end
    def show
      respond_with @log
    end
    
    def new
        respond_with @log = Log.new
     end
    
    def edit
        respond_with @log
     end
     def create
         respond_with @log = Log.create(log_params)
     end
     def update
        @log.update(log_params)
        respond_with @log
      end
       def destroy
          # Destroy returns the object (i.e. self); though I believe Mongoid returns a boolean - need to double check this
            @log.destroy
            respond_with @log.destroy
  end
  
  private
  
  def set_log
     @log = Log.find(params[:id])
  end
  def log_params
        params.permit(:date_start, :description)
  end
end
