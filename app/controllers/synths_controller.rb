class SynthsController < ApplicationController

  def index
    @synths = Synth.all
  end

  def show
  end

end
