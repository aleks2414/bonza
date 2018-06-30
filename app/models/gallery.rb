class Gallery < ApplicationRecord
  belongs_to :user
 mount_uploader :photo10, Foto10Uploader
end
