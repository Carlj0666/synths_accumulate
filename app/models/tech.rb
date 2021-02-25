class Tech < ApplicationRecord
  has_many :synths
  has_many :users, through: :synths
  accepts_nested_attributes_for :synths
  validates :name, presence: true

end
