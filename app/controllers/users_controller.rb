class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = Book.new
  end

  def index
    @user = current_user
    @book = Book.new
    @users = User.all
  end

  def edit
  end

end
