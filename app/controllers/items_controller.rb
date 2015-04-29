class ItemsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def show
    item = Items.find(params[:id])
    render :json => item
  end

  def create
    @item = current_user.items.build(item_params)
    if @item.save
      respond_to do |format|
        format.html { redirect_to controller: 'dashboards', action: 'show', id: item_params[:list_id] }

        format.js {}
      end
    else
      render 'dashboard#index'
    end
  end

  private

    def item_params
      params.require(:item).permit(:content, :list_id)
    end
end
