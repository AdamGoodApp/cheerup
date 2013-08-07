class User < ActiveRecord::Base
  require 'carrierwave/processing/rmagick'

  has_many :cheer_ups

  acts_as_voter

  scope :blurb, -> { select("users.id, users.firstname, users.image_upload") }

  scope :with_cu, -> { includes(:cheer_ups)}

  mount_uploader :image_upload, AvatarUploader
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :bio, :email, :firstname, :image_upload, :remove_image_upload, :lastname, :password, :password_confirmation, :remember_me, :role

  validates :email, presence: true, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :on => :create
  validates :firstname, presence: true, :on => :update
  validates :lastname, presence: true, :on => :update
  validates :bio, presence: true, length: { maximum: 141 }, :on => :update

  def stats
    number_of_CU = cheer_ups.count
    sum_CU_ratings = cheer_ups.inject(0) { |sum, cu|
      sum + cu.rating }
    number_of_CU_votes = cheer_ups.inject(0) { |sum, cu|
      sum + cu.votes.size }
    average_CU_rating = sum_CU_ratings / number_of_CU

    stats = {number_of_CU: number_of_CU, average_CU_rating: average_CU_rating, number_of_CU_votes: number_of_CU_votes }
  end

  def role?(role)
    self.role == role
  end


end
