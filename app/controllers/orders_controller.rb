class OrdersController < ApplicationController
  def new
    @order = Order.new
    @item = Item.find_by(id: params[:format])
    @card = Card.new
  end
end
