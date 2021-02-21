class Synth < ApplicationRecord
  belongs_to :user
  belongs_to :tech
  # accepts_nested_attributes_for :tech #Nested attribs on line 19 of synths new view
  validates :tech, :brand, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :brand, uniqueness: { scope: [:tech, :price, :name], message: "Tech, Price and Name for this Synth was already created"}
  #allows several same brand but not with name as well

  def tech_attributes=(attributes)
    if !attributes[:name].blank?
    self.tech = Tech.find_or_create_by(name: attributes[:name])
  end

#   def tech_attributes=(attributes)
#     attributes.each do |number, synth_hash| 
#         synth = self.shoes.build(synth_hash)
#         synth.user = current_user
#         synth.save
#     end 
# end 

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
