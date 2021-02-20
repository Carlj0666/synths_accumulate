class SynthsController < ApplicationController

  def new
    @synth = Synth.new
  end

  def create

    @synth = Synth.new(synth_params)
    if @synth.save
      redirect_to synth_path(@synth)
    else
      render :new
    end
  end

  def index
    @synths = Synth.all
  end

  def show
    @synth = Synth.find(params[:id])
  end

  def edit
    @synth = Synth.find(params[:id])
  end

  def update
    synth = Synth.find(params[:id])
    synth.update(synth_params)
    redirect_to synth_path(synth)
  end

  def destroy
    synth = Synth.find(params[:id])
    synth.destroy
    redirect_to synths_path
  end

  def prodigal
    @synth = Synth.order_by_price.first
  end


  private

  def synth_params
    params.require(:synth).permit(:name, :brand, :hybrid, :price, :description)
  end

end
