class SynthsController < ApplicationController
  
  before_action :set_synth, :redirect_non_owners, only: [:edit, :update, :destroy]
  before_action :logged_in?, only: [:new, :edit, :destroy]

  def new
    if params[:tech_id] && @tech = Tech.find_by(id: params[:tech_id]) 
      @synth = @tech.synths.build
    else
      @synth = Synth.new
      @synth.build_tech
    end

  end

  def create 

    @synth = current_user.synths.build(synth_params)
    binding.pry
    if @synth.save
      redirect_to synth_path(@synth)
    else
      @teches = Tech.find_by_id(params[:tech_id]) if params[:tech_id]
      render :new
    end
  end

  def index
    if params[:tech_id] && @tech = Tech.find_by(id: params[:tech_id])
      @synths = @tech.synths
    else
      @synths = Synth.all
    end 
  end

  def show
    @synth = Synth.find(params[:id])
  end

  def edit
  end

  def update
    @synth.update(synth_params)
    redirect_to synth_path(@synth)
  end

  def destroy
    @synth.destroy
    redirect_to synths_path
  end

  def prodigal
    @synth = Synth.order_by_price.first
  end

  def ordered_alphabetically
    @synths = Synth.ordered_alphabetically
     synths_ordered_alphabetically_path
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
