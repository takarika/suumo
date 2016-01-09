class House < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :favorites
  after_initialize :set_default_value
  private
  def set_default_value
    self.favorites_count ||= 0
  end
end
