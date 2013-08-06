class CheerUp < ActiveRecord::Base

  require 'carrierwave/processing/rmagick'
  mount_uploader :image_upload, AvatarUploader
  mount_uploader :sound_upload, CheersoundUploader

  attr_accessible :content, :image_upload, :latitude, :longitude, :rating, :sound_upload, :user_id

  acts_as_votable

  belongs_to :user

  validates :content, presence: true,length: { maximum: 141 }

  scope :blurb, -> { select("id, content, image_upload, rating, sound_upload, user_id") }

  scope :with_user, -> { includes(:user)}
  scope :with_votes, -> { includes(:votes)}

  def vote_up
    @cheer_up.liked_by current_user
  end

  def vote_down
    @cheer_up.downvote_from current_user
  end

  def rating
    upvotes.size - downvotes.size
  end

end
