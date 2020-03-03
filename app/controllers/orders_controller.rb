class OrdersController < ApplicationController
  before_action :set_item
  def new
    @order = Order.new
    # @card = Card.new
  end
  def create
    @order = Order.new(order_params)
    # @card = Card.new
    if @order.save
      redirect_to  item_purchase_index_path
    else
      render :new
    end
  end
  private
  def order_params
    params.require(:order).permit(:last_name_receiver, :first_name_receiver, :last_name_kana_receiver, :first_name_kana_receiver, :zip_code_receiver, :address_receiver, :tel_receiver,:prefecture_id, :payment_id).merge(buyer_id: current_user.id,item_id: params[:item_id])
  end

  def set_item
    @item = Item.find(params[:item_id])
  end

end
