#class BooksController < ApplicationController
#	def new
#		@book = Book.new
#	end
#
#
#	def create
#		@book = Book.new(params[:book])
#		if @book.save
#			redirect_to booksform_book_path
#		end
#	end
#
#
#end








class BooksController < ApplicationController
  def index
    @book = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end
  def create
    @book = Book.create(book_params)

    if @book.save
      redirect_to @book
    else
      render :new
    end
  end
