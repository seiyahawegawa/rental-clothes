class MensController < ApplicationController
  def index
    @items = Item.find(1)
  end
  def show
    # @items = Item.find(id: params[:id])
  end

  
end
