class BooksController < ApplicationController
  
  def create
    @book = Book.new(book_params)
    @books = Book.all
    
    if @book.save
      flash[:notice] = "successfully"
      redirect_to book_path(@book.id)
    else
      flash[:notice] = "failure"
      render :index
    end
  end

  def index
    @books = Book.all
    @book = Book.new
    
    book = Book.find(params[:id])
    book.update(book_params)
    
    if book.save
      flash[:notice] = "successfully"
      redirect_to books_path(book.id)
    else
      flash[:notice] = "error:failure"
      render :update
    end
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
    
    if book.save
      flash[:notice] = "successfully"
      redirect_to books_path(book.id)
    else
      flash[:notice] = "error:failure"
      render :edit
    end
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:notice] = "successfully"
    redirect_to '/books'
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
