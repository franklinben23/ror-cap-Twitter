module ApplicationHelper
  def display_photo_main(user = nil)
    if user.nil? || user.photo.nil? || !user.photo.attached?
      'default-photo.png'
    else
      user.photo.attached?
      user.photo
    end
  end

  def display_like_btn(tweet, like)
    liked = current_user.likes.where(user_id: current_user.id ,tweet_id: tweet.id)
    if liked
      render 'dislike_form', like: liked
    #else
    #  render 'like_form', tweet: tweet, like: like
    end
  end
end
