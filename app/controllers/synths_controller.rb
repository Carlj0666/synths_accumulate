class SynthsController < ApplicationController
  #before_action :require_login, only: [:edit, :destroy, :new]

  def new
    @synth = Synth.new
    @synth.build_tech 
  end

  def create 
    @synth = .build(synth_params)
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
    params.require(:synth).permit(:name, :brand, :hybrid, :price, :description, :tech_id, :user_id, tech_attributes: [:name])
  end
end
