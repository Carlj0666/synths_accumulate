class Synth < ApplicationRecord
  belongs_to :user
  belongs_to :tech
  validates :name, :brand, :price, :description, :tech, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :brand, uniqueness: { scope: [:tech, :price, :name], message: "Tech, Price and Name for this Synth was already created"}

  def tech_attributes=(attributes)
    if !attributes[:name].blank? #uncommented TESTING
    self.tech = Tech.find_or_create_by(name: attributes[:name])
    end
  end

  def name_and_tech
    "Name: #{self.name} - Technology: #{self.tech.try(:name)}"
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
  
  def self.ordered_alphabetically
    self.order(:name)
  end

end
