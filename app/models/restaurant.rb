class Restaurant < ApplicationRecord
  mount_uploader :image, ImageUploader
end
