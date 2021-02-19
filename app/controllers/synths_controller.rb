class SynthsController < ApplicationController

  def index
    @synths = Synth.all
  end

  def show
    @synth = Synth.find_by(params[:id] )
  end

end
