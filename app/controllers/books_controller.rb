class BooksController < ApplicationController

  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
  end

  def show
    #bookのidが＠userに入ってしまっているのか？エラーが出る
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(current_user)
  end

  def edit
    @book = Book.find(params[:id])
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
