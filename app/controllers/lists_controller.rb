class ListsController < ApplicationController
  def create
    @list = List.new(list_params)
        @list = List.new(list_params)
    if @list.save
      flash[:notice] = "successfully!"
      redirect_to list_path(@list.id)
    else
      render :new
    end
  end

  def index
    @lists = List.all
    @list = List.new  
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end
  
  def update
    list = List.find(params[:id])
    list.update(list_params)
    flash[:notice] = "successfully!"
    redirect_to list_path(list.id)
  end
  
  def destroy
    list = List.find(params[:id])
    list.destroy
    flash[:notice] = "successfully!"
    redirect_to '/lists'
  end
  
  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
