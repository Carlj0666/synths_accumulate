class Synth < ApplicationRecord
  belongs_to :tech
  belongs_to :user

  def name_and_tech
    "Name: #{self.name} - Technology: #{self.tech.name}"
  end


end
