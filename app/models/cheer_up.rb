class CheerUp < ActiveRecord::Base
  attr_accessible :content, :image_upload, :latitude, :longitude, :rating, :sound_upload, :user_id, :votes

  belongs_to :user
end
