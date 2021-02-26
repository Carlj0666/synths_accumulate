class SynthsController < ApplicationController
  
  before_action :set_synth, :redirect_non_owners, only: [:edit, :update, :destroy]
  before_action :logged_in?, only: [:new]

  def new
    @synth = Synth.new
    @synth.build_tech 
  end

  def create 
    #@synth = Synth.new(synth_params)

    @synth = current_user.synths.build(synth_params)
    if @synth.save
      redirect_to synth_path(@synth)
    else
      @teches = Tech.find_by_id(params[:tech_id]) if params[:tech_id]
      render :new
    end
  end

  def index
    if params[:tech_id] && @tech = Tech.find_by(params[:tech_id])
      @synths = @tech.synths
    else
      @synths = Synth.all
    end 
  end

  def show
    #before action set synth under private handles this now
    @synth = Synth.find(params[:id])
  end

  def edit
      #before action set synth under private handles this now
  end

  def update
      #before action set synth under private handles this now
    @synth.update(synth_params)
    redirect_to synth_path(@synth)
  end

  def destroy
      #before action set synth under private handles this now
    @synth.destroy
    redirect_to synths_path
  end

  def prodigal
    @synth = Synth.order_by_price.first
  end

  private

  def synth_params
    params.require(:synth).permit(:name, :brand, :hybrid, :price, :description, :tech_id, tech_attributes: [:name])
  end

  def redirect_non_owners
    if current_user != @synth.user
      redirect_to synths_path, alert: "Not editable by this user"
    end
  end

  def set_synth
    @synth = Synth.find(params[:id])
  end

end
