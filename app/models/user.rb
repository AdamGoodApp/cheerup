class User < ActiveRecord::Base
  require 'carrierwave/processing/rmagick'
  mount_uploader :image_upload, AvatarUploader
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :bio, :email, :firstname, :image_upload, :lastname, :password, :password_confirmation, :remember_me

  has_many :cheer_ups
end
