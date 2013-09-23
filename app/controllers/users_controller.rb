class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    if @user.save
       render 'login'    
    else
      render 'new'
    end
  end

  def new
    @user = User.new
  end
 
  def login
  end
    
  def create
    @user = User.new(user_params)
    if @user.save

    else
      render 'new'
    end
  end

  private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
