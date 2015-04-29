class ListsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    @list = current_user.lists.build(list_params)
    if @list.save
      redirect_to controller: 'dashboards', action: 'show', id: @list.id
    else
      render 'dashboard#index'
    end
  end

  private

    def list_params
      params.require(:list).permit(:title)
    end
end
