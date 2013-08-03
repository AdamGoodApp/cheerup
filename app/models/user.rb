class User < ActiveRecord::Base
  require 'carrierwave/processing/rmagick'

  has_many :cheer_ups

  mount_uploader :image_upload, AvatarUploader
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :bio, :email, :firstname, :image_upload, :lastname, :password, :password_confirmation, :remember_me

  validates :email, presence: true, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :on => :create
  validates :firstname, presence: true, :on => :update
  validates :lastname, presence: true, :on => :update
  validates :bio, presence: true, :on => :update
  validates :image_upload, presence: true, :on => :update

end
