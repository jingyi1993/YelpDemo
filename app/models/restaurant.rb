class Restaurant < ApplicationRecord
  searchkick
  mount_uploader :image, ImageUploader

  has_many :reviews
end
