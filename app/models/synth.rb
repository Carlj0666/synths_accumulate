class Synth < ApplicationRecord
  belongs_to :user
  belongs_to :tech
  # accepts_nested_attributes_for :tech #Nested attribs on line 19 of synths new view
  validates :brand, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :brand, uniqueness: { scope: :name, message: "and Synth Already Exists"}
  #allows several same brand but not with name as well

  def tech_attributes=(attributes)
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


end
