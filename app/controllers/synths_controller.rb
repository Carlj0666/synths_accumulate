class SynthsController < ApplicationController

  def index
    @synths = Synth.all
  end

  def show
    @synth = Synth.find_by(params[:id] )
  end

  def prodigal
    @synth = Synth.all.sort_by{|synth| synth.price}.last
  end


end
