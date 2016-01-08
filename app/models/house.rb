class House < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  has_many :favorites
end
