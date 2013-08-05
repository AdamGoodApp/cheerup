class CheerUp < ActiveRecord::Base
  require 'carrierwave/processing/rmagick'
  mount_uploader :image_upload, AvatarUploader
  mount_uploader :sound_upload, CheersoundUploader


  attr_accessible :content, :image_upload, :latitude, :longitude, :rating, :sound_upload, :user_id, :votes

  belongs_to :user

  validates :content, presence: true

  scope :blurb, -> { select("content, image_upload, rating, sound_upload, user_id, votes") }

  scope :with_user, -> { includes(:user)}

  def vote_up
    @cheer_up.rating += 1
    @cheer_up.votes += 1
    @cheer_up.save
  end

  def vote_down
    @cheer_up.rating -= 1
    @cheer_up.votes += 1
    @cheer_up.save
  end


end
