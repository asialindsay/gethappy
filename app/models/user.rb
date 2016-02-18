class User < ActiveRecord::Base
  has_many :memories

  # before_save { self.email = email.downcase }

  validates :first_name, presence: true
  validates :last_name, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  validates :password, :presence => true,
                       :length => {:within => 6..20}

  has_secure_password
  # validates_uniqueness_of :email
  # validates_presence_of :name, :email
end
