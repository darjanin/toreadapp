class DashboardsController < ApplicationController
  def index
    @list = current_user.lists.build if logged_in?
    @item = current_user.items.build if logged_in?
    @lists = List.all
    # @lists = List.where("user_id=?", current_user.id)
    list_id = 1
    @items = Item.all
  end

  def show
    @list_id = params[:id]
    @list = current_user.lists.build if logged_in?
    @item = current_user.items.build if logged_in?
    @lists = List.all
    @items = Item.where("list_id=?", @list_id)
    render "index"
  end

  def item_show
    @list_id = params[:id]
    @list = current_user.lists.build if logged_in?
    @item = current_user.items.build if logged_in?
    @lists = List.all
    @items = Item.where("list_id=?", @list_id)
    @item_data = Item.find(params[:item_id])
    @user_item_data = @item_data.user

    render "index"
  end

end
