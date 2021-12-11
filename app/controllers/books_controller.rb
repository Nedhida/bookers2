class BooksController < ApplicationController
  def edit
  end

  def index
     @user = User.all
    @book = Book.new
  end

  def show
  end
end
