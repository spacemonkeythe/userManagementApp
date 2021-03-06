class User < ActiveRecord::Base
  before_save { |user| user.email = email.downcase }

  validates :name, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  validates :password, presence: true , length: { minimum: 8 }, on: :create

  validates :password_confirmation, presence: true, on: :create

  has_secure_password
end
