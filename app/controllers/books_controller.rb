class BooksController < ApplicationController
  	def top

  	end

  	def index
  	  	@books_index =  Book.all
        @book_add = Book.new
    end

  	def create
  		book_add = Book.new(book_params)
  		book_add.save
  		redirect_to book_path(book_add.id), notice: "Book was successfully created."
  	end

  	def show
        @book = Book.find(params[:id])
  	end

  	def edit
  		@book = Book.find(params[:id])
  	end

  	def update
  		book = Book.find(params[:id])
        book.update(book_params)
        redirect_to book_path(book.id), notice: "Book was successfully updated."
  	end

  	def destroy
  		book = Book.find(params[:id])
        book.destroy
        redirect_to books_path, notice: "Book was successfully destroyed."
  	end

  	private

  	def book_params
  		params.require(:book).permit(:title, :body)
  	end
end
