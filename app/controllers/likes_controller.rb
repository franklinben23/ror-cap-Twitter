class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(like_params)

    if @like.save
      redirect_to root_path, notice: 'You liked this tweet.'
    else
      redirect_to root_path, alert: 'error: failed to send like'
    end
  end

  def destroy
    @like = Like.find(params[:id])
    if @like
      @like.destroy
      redirect_to root_path, notice: 'You removed a like'
    else
      redirect_to root_path, alert: 'You cannot remove this like right now'
    end
  end

  def like_params
    params.require(:like).permit(:tweet_id)
  end
end
