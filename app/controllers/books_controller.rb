class BooksController < ApplicationController

  before_action :authenticate_user!

  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
  end

  def show
    @books = Book.find(params[:id])
    @book = Book.new
    @user = @books.user
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path(current_user), notice: 'You have created book successfully.'
    else
      render :show
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path(current_user), notice: 'You hanve updated book successfully.'
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :opinion)
  end
end
