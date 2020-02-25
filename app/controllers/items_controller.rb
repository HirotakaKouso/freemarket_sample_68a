class ItemsController < ApplicationController
  def new
    @item = Item.new
    @item.images.new
    @parents = Category.where(ancestry: nil)
    @category_parent_array = ["カテゴリーを選択する"]
    @parents.each do |parent|
      @category_parent_array << parent.name
    end
  end

  def get_category_children
    @category_children = Category.find_by(id: "#{params[:parent_id]}", ancestry: nil).children
  end

  def get_category_grandchildren
    @category_grandchildren = Category.find_by(id: "#{params[:child_id]}").children
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to item_path(@item.id)
    else
      render :new
    end
  end

  # def show
  #   @item = Item.find(params[:id])
  # end

  private
  def item_params
    params.require(:item).permit(:name, :price, :description, :shipping_method_id, :brand_id, :condition_id, :size_id, :category_id, :prefecture_id, :delivery_date_id, :shipping_fee_id, :method ,images_attributes: [:src, :_destroy, :id]).merge(user_id: current_user.id)
  end
end

