class DashboardsController < ApplicationController
  def index
    @list = current_user.lists.build if logged_in?
    @item = current_user.items.build if logged_in?
    @lists = List.all
    # @lists = List.where("user_id=?", current_user.id)
    list_id = 1
    @items = Item.all
  end

  def list_items
    @list = current_user.lists.build if logged_in?
    @list_selected = List.find(params[:id])
  end


end
