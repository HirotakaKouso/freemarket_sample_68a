class ItemsController < ApplicationController
  # before_action :authenticate_user!, except: [:new,:create]
  def new
    @item = Item.new
    @item.images.new
    @parents = Category.where(ancestry: nil).order("id ASC")
  end
  def create
    @item = Item.new(item_params)
    if @item.save
    else
      render :new
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :price, :description, :shipping_method_id, :brand_id, :condition_id, :size_id, :category_id, :prefecture_id, :delivery_date_id, :shipping_fee_id, :method ,images_attributes: [:src, :_destroy, :id]).merge(user_id: current_user.id)
  end
end
