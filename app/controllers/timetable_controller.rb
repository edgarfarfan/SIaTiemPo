class TimetableController < ApplicationController
respond_to :html, :xml, :json

    before_action :set_accion, only: [:show, :edit, :update, :destroy]
    
    def index 
        @timetables = Timetable.all
    end
    def show
      respond_with @timetable
    end
    
    def new
        respond_with @timetable = Timetable.new
     end
    
    def edit
        respond_with @timetable
     end
     def create
         respond_with @timetable = Timetable.create(timetable_params)
     end
     def update
        @timetable.update(timetable_params)
        respond_with @timetable
      end
       def destroy
          # Destroy returns the object (i.e. self); though I believe Mongoid returns a boolean - need to double check this
            @timetable.destroy
            respond_with @timetable.destroy
  end
  
  private
  
  def set_timetable
     @timetable = Timetable.find(params[:id])
  end
  def timetable_params
        params.permit(:hour_star, :hour_end)
  end
end
