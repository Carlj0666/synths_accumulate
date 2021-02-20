class Synth < ApplicationRecord
  belongs_to :tech
  belongs_to :user
  validates :brand, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :name, presence: true, uniqueness: true

  def name_and_tech
    "Name: #{self.name} - Technology: #{self.tech.name}"
  end

  def display_hybrid
    if self.hybrid
      "Yes"
    else
      "No"
    end
  end

  def self.order_by_price
    self.order(price: :desc)
  end


end
