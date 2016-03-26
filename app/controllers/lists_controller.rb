class ListsController < ApplicationController
  
  def new
    @list = List.new
  end

  def create
    @list = List.create(list_params)
    if @list.save
      redirect_to @list
    else
      redirect_to root_path
      flash[:notice] = "If you had filled out the list form properly you wouldn't be seeing this"
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
    @item = @list.items.find.to_s.capitalize(params[:id]).order(created_at 'ASC') unless @item.nil?
  end

  private

  def list_params
    params.require(:list).permit(:title, :description)
  end
end