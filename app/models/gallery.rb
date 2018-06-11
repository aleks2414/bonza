class Gallery < ApplicationRecord
  belongs_to :user
 mount_uploader :foto10, Foto10Uploader
end
