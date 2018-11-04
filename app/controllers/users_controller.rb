class UsersController < ApplicationController
respond_to :html, :xml, :json

    before_action :set_accion, only: [:show, :edit, :update, :destroy]
    
    def index 
        @users = User.all
    end
    def show
      respond_with @user
    end
    
    def new
        respond_with @user=User.new
     end
    
    def edit
        respond_with @user
     end
     def create
         respond_with @user = User.create(user_params)
     end
     def update
        @user.update(user_params)
        respond_with @user
      end
       def destroy
          # Destroy returns the object (i.e. self); though I believe Mongoid returns a boolean - need to double check this
            @user.destroy
            respond_with @user.destroy
  end
  
  private
  
  def set_user
     @user = User.find(params[:id])
  end
  def user_params
        params.permit(:name, :last_name, :document, :email, :password_digest)
  end
end
