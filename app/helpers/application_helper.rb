module ApplicationHelper
  def display_photo_main(user = nil)
    if user.nil? || user.photo.nil? || !user.photo.attached?
      'default-photo.png'
    else
      user.photo.attached?
      user.photo
    end
  end
end
