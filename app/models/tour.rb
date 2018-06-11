class Tour < ApplicationRecord
  belongs_to :user

mount_uploader :foto7, Foto7Uploader
mount_uploader :foto8, Foto8Uploader
mount_uploader :foto9, Foto9Uploader
end
