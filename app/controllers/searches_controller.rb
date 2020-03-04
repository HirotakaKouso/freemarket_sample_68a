class SearchesController < ApplicationController
  def index
    @items = Item.all.order(created_at: :desc)
    @items = Item.page(params[:page]).per(10)
    @items = Item.search(params[:search]).limit(132)
    @search = params[:search]
  end
end
