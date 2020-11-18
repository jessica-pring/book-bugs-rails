class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  def index
    @books = policy_scope(Book)
      if params[:query].present?
        sql_query = "title ILIKE :query
                    OR season ILIKE :query
                    OR genre ILIKE :query"
        @books = @books.where(sql_query, query:"%#{params[:query]}%")  
      end
  end
  def show
    @book = Book.new
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to dashboard_path
    else
      render :edit
  end

private

  def book_params
    params.require(:book).permit(:season, :genre, title, author)
end
