class SynthsController < ApplicationController

  def new
    @synth = Synth.new
  end

  def create
    @synth = Synth.new(synth_params)
    if @synth.save
      redirect_to synth_path(synth)
    else
      render :new
    end
  end

  def index
    @synths = Synth.all.order_by_price
  end

  def show
    @synth = Synth.find_by(params[:id])
  end

  def edit
    @synth = Synth.find_by(params[:id])
  end

  def update
    synth = Synth.find_by(params[:id])
    synth.update(synth_params)
    redirect_to synth_path(synth)
  end

  def delete
    
  end

  def prodigal
    @synth = Synth.order_by_price.first
  end


  private

  def synth_params
    params.require(:synth).permit(:name, :brand, :hybrid, :price, :description)
  end

end
