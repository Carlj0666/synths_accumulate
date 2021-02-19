class Synth < ApplicationRecord
  belongs_to :tech
  belongs_to :user

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
    #self.all.sort_by{|synth| synth.price}.last
  end


end
