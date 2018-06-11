class Fan < ApplicationRecord
  belongs_to :user

mount_uploader :foto4, Foto4Uploader
mount_uploader :foto5, Foto5Uploader
mount_uploader :foto6, Foto6Uploader
end
