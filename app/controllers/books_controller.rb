class BooksController < ApplicationController
  def edit
  end

  def index
    @user = User.find(params[:id])
    @book = Book.new
  end

  def show
  end
end
