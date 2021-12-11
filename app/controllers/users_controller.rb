class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user = current_user
    @book = Book.new
  end

  def edit
  end

end
