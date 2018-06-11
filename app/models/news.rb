class News < ApplicationRecord
  belongs_to :user

mount_uploader :foto1, Foto1Uploader
mount_uploader :foto2, Foto2Uploader
mount_uploader :foto3, Foto3Uploader

end
