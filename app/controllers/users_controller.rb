class UsersController < ApplicationController
  def index
    @users = User.all.order(created_at: :desc)
    @user = User.new
    @user.photo.attach(params[:photo])
    @follow = Follow.new
  end

  def show
    @user = User.find(params[:id])
    @user_tweets = @user.tweets.ordered_by_latest
    @follow = Follow.new
  end
end
