class ItemsController < ApplicationController
  
  def create
    @list = List.find(params[:list_id])
    @item = @list.items.create(item_params)
    if @item.save
      redirect_to list_path(@list)
    end
  end

  def index
  end

  def edit
  end

  def delete
  end

  def show
  end

  def item_params
    params.require(:item).permit(:content)
  end

end

