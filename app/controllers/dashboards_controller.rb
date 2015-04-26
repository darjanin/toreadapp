class DashboardsController < ApplicationController
  def index
    @list = current_user.lists.build if logged_in?
    @lists = List.where("user_id=?", current_user.id)
  end

  def list_items
    @list = current_user.lists.build if logged_in?
    @list_selected = List.find(params[:id])
  end


end
