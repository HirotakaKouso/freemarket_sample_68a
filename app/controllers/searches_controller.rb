class SearchesController < ApplicationController
  def index
    @items_p = Item.all.order(created_at: :desc)
    @items_p = Item.page(params[:page]).per(10).order('updated_at DESC')
    @items = Item.search(params[:search]).limit(100)
    @search = params[:search]
  end
end
