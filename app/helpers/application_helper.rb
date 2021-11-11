module ApplicationHelper
  def display_photo_main(user = nil)
    if user.nil? || user.photo.nil? || !user.photo.attached?
      'default-photo.png'
    else
      user.photo.attached?
      user.photo
    end
  end

  def follow_suggestion(following_list, user)
    output = ''
    unless following_list.include?(user.id)
      output = "<div class='follow-suggestion is-flex py-5'>"
      output << '<%= image_tag display_photo(user) class: tweet-pic %>'
      output << "<div class='follow-info'>"
      output << "<p><a class='mx-3' href='#{users_path(user)}'> #{user.fullname} </a></p></div></div>"
    end
    output.html_safe
  end
end
