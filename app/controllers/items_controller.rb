class ItemsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    @item = current_user.items.build(item_params)
    if @item.save
      redirect_to dashboard_path
    else
      render 'dashboard#index'
    end
  end

  private

    def item_params
      params.require(:item).permit(:content)
    end
end
