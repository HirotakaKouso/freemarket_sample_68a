class CardController < ApplicationController

  require "payjp"
  before_action :set_card

  def new
    if @card.exists? #カード情報がなければ、カード登録画面に戻る
    redirect_to action: "show"
  end
end

  def pay #payjpとCardのデータベース作成。
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    if params['payjp-token'].blank?
      redirect_to action: "new"
    else
      customer = Payjp::Customer.create(
      description: '登録テスト', #なくてもOK
      email: current_user.email, #なくてもOK
      card: params['payjp-token'],
      metadata: {user_id: current_user.id}
      ) #念の為metadataにuser_idを入れましたがなくてもOK
      @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
      if @card.save
        redirect_to action: "create"
      else
        redirect_to action: "pay"
      end
    end
  end

  def destroy #PayjpとCardデータベースを削除します
    card = @card.first
    if card.blank?
      redirect_to action: "new"
    else
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(card.customer_id)
      customer.delete
      card.delete
    end
  end

  def show #Cardのデータpayjpに送り情報を取り出します
    card = @card.first
    if card.blank?
      redirect_to action: "new" 
    else
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(card.customer_id)
      @default_card_information = customer.cards.retrieve(card.card_id)
    end
  end

  private
  def set_card
    @card = Card.where(user_id: current_user.id)
  end
end