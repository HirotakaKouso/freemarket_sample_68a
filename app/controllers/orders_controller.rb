class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item,:set_card
  def index
    @order = Order.new

  end

  def new
    @order = Order.new(order_params)
    if @card.blank?
      #登録された情報がない場合にカード登録画面に移動
      redirect_to controller: "card", action: "new"
    else
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      #保管した顧客IDでpayjpから情報取得
      customer = Payjp::Customer.retrieve(@card.customer_id)
      #保管したカードIDでpayjpから情報取得、カード情報表示のためインスタンス変数に代入
      @default_card_information = customer.cards.retrieve(@card.card_id)
    end
    
    session[:last_name_receiver] = params[:order][:last_name_receiver]
    session[:first_name_receiver] = params[:order][:first_name_receiver]
    session[:last_name_kana_receiver] = params[:order][:last_name_kana_receiver]
    session[:first_name_kana_receiver] = params[:order][:first_name_kana_receiver]
    session[:zip_code_receiver] = params[:order][:zip_code_receiver]
    session[:address_receiver] = params[:order][:address_receiver]
    session[:tel_receiver] = params[:order][:tel_receiver]
    session[:prefecture_id] = params[:order][:prefecture_id]
    @prefecture = Prefecture.find(session[:prefecture_id])
    session[:payment_id] = params[:order][:payment_id]
    @payment = Payment.find(session[:payment_id])
  end
  
  def create
    @order = Order.new(order_params)
    if @order.save
        session[:last_name_receiver].clear
        session[:first_name_receiver].clear
        session[:last_name_kana_receiver].clear
        session[:first_name_kana_receiver].clear
        session[:zip_code_receiver].clear
        session[:address_receiver].clear
        session[:tel_receiver].clear
        session[:prefecture_id].clear
        Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
        Payjp::Charge.create(
        :amount => @item.price, #支払金額を入力（itemテーブル等に紐づけても良い）@item.price,
        :customer => @card.customer_id, #顧客ID set_cardを使うのなら、@cardと記述
        :currency => 'jpy', #日本円という意味
      )
      redirect_to done_item_purchase_index_path #完了画面に移動
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

  def set_card
    @card = Card.find_by(user_id: current_user.id)
  end


end
