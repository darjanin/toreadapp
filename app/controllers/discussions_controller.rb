class DiscussionsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def show
    item = Discussion.find(params[:id])
    render :json => item
  end

  def create
    # p params[:list_id]
    @discussion = current_user.discussions.build(discussion_params)
    if @discussion.save
      respond_to do |format|
        format.html { redirect_to controller: 'dashboards', action: 'show', id: params[:list_id] }
      end
    else
      render 'dashboard#index'
    end
  end

  private

    def discussion_params
      params.require(:discussion).permit(:content, :item_id)
    end
end
