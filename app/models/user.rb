class User < ActiveRecord::Base
  attr_accessible :bio, :email, :firstname, :image_upload, :lastname

  has_many :cheer_ups
end
