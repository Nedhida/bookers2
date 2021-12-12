class BooksController < ApplicationController
  def edit
  end

  def index
    @user = current_user

    @book = Book.new
  end

  def show
  end
end
