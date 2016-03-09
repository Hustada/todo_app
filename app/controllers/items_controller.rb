class ItemsController < ApplicationController
  
  def create
    @list = List.find(params[:list_id])
    @item = @list.items.create(item_params)
    @item.save
    redirect_to list_path(@list)
  end

  def index
  end

  def edit
  end

  def destroy
  @list = List.find(params[:list_id])
  @item = @list.items.find(params[:id])
  @item.destroy
  redirect_to list_path(@list)
end

  def show
  end

  private

  def item_params
    params.require(:item).permit(:content)
  end

end

