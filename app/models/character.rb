class Character < ApplicationRecord
  mount_uploader :image, AvatarUploader
end
