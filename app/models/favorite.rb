class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :house, counter_cache: :favorites_count
end