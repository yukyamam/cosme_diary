class ItemsController < ApplicationController

  def index
    @items = Item.all.order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if !(@item.save)
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :category_id, :genre_id, :price, :purchase_date, :opening_date).merge(user_id: current_user.id)
  end
end
