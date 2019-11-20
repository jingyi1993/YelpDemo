class Restaurant < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :reviews
end
