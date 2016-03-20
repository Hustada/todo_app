class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.create(list_params)
    if @list.save
      redirect_to @list
    else
      render new
  end
end

  def index
    @lists = List.all
  end

  def edit
  end

  def delete
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    if @list.destroy
      redirect_to root_path
    end
  end

  def show
    @list = List.find(params[:id])
  end

  private

  def list_params
    params.require(:list).permit(:title, :description)
  end
end