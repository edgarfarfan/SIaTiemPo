class AccionController < ApplicationController
    respond_to :html, :xml, :json

    before_action :set_accion, only: [:show, :edit, :update, :destroy]
    
    def index 
        @accions = Accion.all
    end
    def show
      respond_with @accion
    end
    
    def new
        respond_with @accion = Accion.new
     end
    
    def edit
        respond_with @accion
     end
     def create
         respond_with @accion = Accion.create(accion_params)
     end
     def update
        @accion.update(accion_params)
        respond_with @accion
      end
       def destroy
          # Destroy returns the object (i.e. self); though I believe Mongoid returns a boolean - need to double check this
            @accion.destroy
            respond_with @accion.destroy
  end
  
  private
  
  def set_accion
     @accion = Accion.find(params[:id])
  end
  def accion_params
        params.permit(:description)
  end
end
