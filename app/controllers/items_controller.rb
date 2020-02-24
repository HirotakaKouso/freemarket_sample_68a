class ItemsController < ApplicationController
  def new
    @item = Item.new
    @item.images.new
    @parents = Category.where(ancestry: nil).order("id ASC")
    @category_parent_array = ["選択してください"]
    @parents.each do |parent|
      @category_parent_array << parent.name
    end  
  end

  def get_category_children
    @category_children = Category.find_by(name: "#{params[:parent_name]}", ancestry:nil).children
  end

  def get_category_grandchildren
    @category_grandchildren = Category.find_by(name: "#{params[:child_id]}").children
  end
  
  def create
    @item = Item.new(item_params)
    if @item.save
    else
      render :new
    end
  end

  def show
  end
end
