class SearchesController < ApplicationController
  def index
    @items = Item.search(params[:search]).limit(100)
    @search = params[:search]
  end
end
