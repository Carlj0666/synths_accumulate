class SynthsController < ApplicationController

  def new
    @synth = Synth.new
  end

  def create
    @synth = Synth.create
  end

  def index
    @synths = Synth.all.order_by_price
  end

  def show
    @synth = Synth.find_by(params[:id])
  end

  def prodigal #Could do other filters by price
    @synth = Synth.order_by_price.first
  end

end
