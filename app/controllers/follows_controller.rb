class FollowsController < ApplicationController
  def create
    @follow = Follow.new(follow_params)
  end

  def destroy
    followee_id = params[:followee_id]
    @follow = Follow.find_by(follower_id: current_user.id, followee_id: followee_id)
    @follow.destroy
    redirect_back(fallback_location: users_path(@user))
  end

  private

  def follow_params
    params.require(:follow).permit(:follower_id, :followee_id)
  end
end
