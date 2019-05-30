class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :articles
  has_many :trucks
  enum role: [ :user, :shipper, :trucker, :admin]

  before_create :set_default_user
  after_create :send_welcome_email
  after_create :send_user_info_email

  def set_default_user
    self.role = :user
  end

  def avatar_url
    hash = Digest::MD5.hexdigest(email)
    "http://www.gravatar.com/avatar/#{hash}?s=25&d=monsterid"
  end
  def username
    self.email.split('@')[0]
  end

  def send_welcome_email
    UserNotifierMailer.welcome_user(self).deliver_now
  end

  def send_user_info_email
    UserNotifierMailer.new_user(self).deliver_now
  end
end
