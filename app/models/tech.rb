class Tech < ApplicationRecord
  has_many :synths
  has_many :users, through: :synths

  # def synths_attributes=(attributes)
  #   attributes.each do |number, synth_hash| 
  #       synth = self.synths.build(synth_hash)
  #       synth.user = current_user
  #       synth.save
  #   end 

end
