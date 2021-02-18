class User < ApplicationRecord
  has_many :synths
  has_many :teches, through: :synths
end
