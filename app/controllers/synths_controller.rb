class SynthsController < ApplicationController

  def index
    binding.pry
    @synths = Synth.all
  end

  def show
  end

end
