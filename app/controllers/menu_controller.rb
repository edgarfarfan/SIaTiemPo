class MenuController < ApplicationController
#respond_to :html, :xml, :json

    before_action :set_menu, only: [:show, :edit, :update, :destroy]
    
    def index 
        @menus = Menu.all
    end
    def show
      respond_with @menu
    end
    
    def new
        respond_with @menu = Menu.new
     end
    
    def edit
        respond_with @menu
     end
     def create
         respond_with @menu = Menu.create(menu_params)
     end
     def update
        @menu.update(menu_params)
        respond_with @menu
      end
       def destroy
          # Destroy returns the object (i.e. self); though I believe Mongoid returns a boolean - need to double check this
            @menu.destroy
            respond_with @menu.destroy
  end
  
  private
  
  def set_menu
     @menu = menu.find(params[:id])
  end
  def menu_params
        params.permit(:description)
  end
end
