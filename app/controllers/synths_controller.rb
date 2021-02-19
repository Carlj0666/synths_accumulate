class SynthsController < ApplicationController

  def index
    @synths = Synth.all
  end

  def show
    @synth = Synth.find_by(params[:id] )
  end

  def prodigal #Could do other filters by price
    @synth = Synth.order_by_price.first
  end

end
