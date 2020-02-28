class UsersController < ApplicationController
  def show
    @items = Item.page(params[:page]).per(5)
    @user = User.find(params[:id])
  end

  def edit
  end
end
