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
end
