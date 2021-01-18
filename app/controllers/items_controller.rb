class ItemsController < ApplicationController
  def index
    @items = Item.find(1)
  end
  def show
    @items = Item.find(params[:id])
    @items = Image.find(params[:id])
    

    
  end
  
  
end
