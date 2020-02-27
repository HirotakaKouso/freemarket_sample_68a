class TopController < ApplicationController

  def index
    @items = Item.all
    @orders = Order.all
  end
  
end
