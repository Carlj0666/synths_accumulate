class User < ApplicationRecord
  has_many :synths
  has_many :teches, through: :synths
  has_secure_password

end

