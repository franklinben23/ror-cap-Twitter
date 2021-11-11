class UsersController < ApplicationController
  def index
    @users = User.all.order(created_at: :desc)
    @user = User.where(id: current_user).includes(:followees, :followers)
    @user.photo.attach(params[:photo])
    @follow = Follow.new
    @following = current_user.followers.pluck(:followee_id)
  end

  def show
    @user = User.find(params[:id])
    @user_tweets = @user.tweets.ordered_by_latest
    @follow = Follow.new
    @following = current_user.followers.pluck(:followee_id)
  end

  def follow
    @user = User.find(params[:id])
    current_user.followees << @user
    redirect_back(fallback_location: users_path(@user))
  end

  def unfollow
    @user = User.find(params[:id])
    current_user.followed_users.find_by(followee_id: @user.id).destroy
    redirect_back(fallback_location: users_path(@user))
  end
end
