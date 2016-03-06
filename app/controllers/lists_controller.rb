class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.create(list_params)
    if @list.save
      redirect_to @list
  end
end

  def index
    @lists = List.all
  end

  def edit
  end

  def delete
  end

  def show
    @list = List.find(params[:id])
    @item = Item.all
  end


  def list_params
    params.require(:list).permit(:title, :description)
  end
end