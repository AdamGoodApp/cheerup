class CheerUp < ActiveRecord::Base
  require 'carrierwave/processing/rmagick'
  mount_uploader :image_upload, AvatarUploader


  attr_accessible :content, :image_upload, :latitude, :longitude, :rating, :sound_upload, :user_id, :votes

  belongs_to :user
end
