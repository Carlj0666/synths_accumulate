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


end
