class UsersController < ApplicationController
  def index
  end

  def show
    @user=User.find(params[:id])
    @book=Book.new
  end

  def edit
    @user=current_user
  end
end
