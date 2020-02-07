class BooksController < ApplicationController
   def index
  	@books = Book.all
  	@book = Book.new
  end

  def show
  	@book = Book.find(params[:id])
  end

  def edit
  	@book = Book.find(params[:id])
  end

  def update
  	book = Book.find(params[:id])
  	if book.update(book_params)
  		flash[:notice_update] = "Book was successfully updated."
  		redirect_to books_path(book)
  	else
  		# render :edit
  		# ("edit_books_path(book)")
  	end
  end

  def new
  end

  def create
  	@books = Book.all
  	@book = Book.new(book_params)

  	if @book.save
  		flash[:create] = "Book was successfully created."
  		redirect_to book_path(@book)
  	else
  		render :index
  	end
  end

  def destroy
  	book = Book.find(params[:id])

  	if book.destroy
  		flash[:notice_destroy] = "Book was successfully destroyed."
  		redirect_to root_path
  	end
  end

  private
  def book_params
  	params.require(:book).permit(:title, :body)
  end
end
