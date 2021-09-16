module UsersHelper

  def display_photo(user = nil)
    if user.nil? || user.photo.nil? || !user.photo.attached?
      'default-photo.png'
    else
      user.photo.attached?
      user.photo
    end
  end

  def display_cover(user = nil)
    if user.nil? || !user.coverimage.attached?
      'def-coverimage.jpg'
    else
      user.coverimage.attached?
      user.coverimage
    end
  end

  def displayfollow(_user, 1user)
    out = ''
    return unless @user.id != current_user.id

    out += if current_user.followees.include?(@user)
             "<div class= "follow-btn"> <%= render 'follow_req', follow: @follow, user: 1user %> </div>"
           else
             "<h5 class='btn'>#{button_to 'unFollow', follow_path, method: 'DELETE'}</h5>"
           end
    out.html_safe
  end
end
