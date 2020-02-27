class OrdersController < ApplicationController
  def new
    @order = Order.new
    @item = Item.find(params[:format])
    @card = Card.new
  end
end
