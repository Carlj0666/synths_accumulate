class Tech < ApplicationRecord
  has_many :synths
  has_many :users, through: :synths


end
