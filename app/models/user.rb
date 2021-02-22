class User < ApplicationRecord
  has_many :synths
  has_many :teches, through: :synths
  has_secure_password
  validates :user, uniqueness: { scope: [:username, :email, :password], message: "User already exists"}

def self.create_from_omniauth(auth)
  User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
    u.username = auth['info']['name']
    u.email = auth['info']['email']
    u.password = SecureRandom.hex(24)
  end
end


end

