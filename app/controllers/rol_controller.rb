class RolController < ApplicationController
#respond_to :html, :xml, :json

    before_action :set_accion, only: [:show, :edit, :update, :destroy]
    
    def index 
        @rols = Rol.all
    end
    def show
      respond_with @rol
    end
    
    def new
        respond_with @rol = Rol.new
     end
    
    def edit
        respond_with @rol
     end
     def create
         respond_with @rol = Rol.create(rol_params)
     end
     def update
        @rol.update(rol_params)
        respond_with @rol
      end
       def destroy
          # Destroy returns the object (i.e. self); though I believe Mongoid returns a boolean - need to double check this
            @rol.destroy
            respond_with @rol.destroy
  end
  
  private
  
  def set_rol
     @rol = Rol.find(params[:id])
  end
  def rol_params
        params.permit(:description)
  end
end
