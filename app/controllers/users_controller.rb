class UsersController < ApplicationController
  
  before_action :authenticate_user!
  before_action :correct_user, only: [:edit, :update]
  
  def index
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end
   
  
  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
  end
  
  private
  
    def user_params
      params.require(:user).permit(:name,:introduction)
    end
    
end  
