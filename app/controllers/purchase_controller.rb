class PurchaseController < ApplicationController

  require 'payjp'
  before_action :set_card

  def index
    if @card.blank?
      redirect_to controller: "card", action: "new"
    else
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @default_card_information = customer.cards.retrieve(@card.card_id)
      redirect_to "index"
    end
  end

  def pay
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
    Payjp::Charge.create(
    :amount => 10000,
    :customer => @card.customer_id,
    :currency => 'jpy',
  )
  redirect_to action: 'done' 
  end

  private

  def set_card
    @card = Card.find_by(user_id: current_user.id)
  end

end

